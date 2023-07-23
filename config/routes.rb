# typed: strict
# frozen_string_literal: true

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # == Redirects
  constraints NonCanonicalHostConstraint.new do
    get "(*any)" => "non_canonical_host#redirect"
  end if Rails.env.production?

  # == Healthcheck
  Healthcheck.routes(self)

  # == Devise
  devise_for :users,
             skip: %i[sessions confirmations passwords],
             controllers: {
               registrations: "users/registrations",
             },
             path: "/user",
             path_names: {
               sign_up: "register",
               edit: "settings",
             }
  devise_scope :user do
    resource :sessions,
             path: "/",
             module: "users",
             as: :user_session,
             only: [] do
               get :login, action: :new, as: :new
               post :login, action: :create, as: ""
               post :logout, action: :destroy, as: :destroy
             end
    scope :user, module: "users", as: :user do
      resource :confirmation,
               only: %i[new show],
               path: "/verification",
               path_names: {
                 new: "resend",
               }
      resource :password,
               only: %i[new edit update],
               path_names: {
                 new: "reset",
                 edit: "change",
               }
    end
  end

  # == GraphQL
  scope :graphql, controller: :graphql do
    mount GraphiQL::Rails::Engine,
          at: "/",
          as: :graphiql,
          graphql_path: "/graphql"
    post "/", action: :execute, as: :graphql
  end

  # == Shorcuts
  namespace :shortcuts do
    resource :action_items, only: :create
  end

  # == Poorly Drawn Lines
  namespace :poorly_drawn_lines do
    resources :comics, only: :show
  end

  # == Calendly
  get "/calendly" => "calendly#show"
  get "/hangout" => "calendly#show"

  # == Errors
  scope controller: :errors do
    match "/401", action: :unauthorized, via: :all
    match "/404", action: :not_found, via: :all
    match "/422", action: :unprocessable_entity, via: :all
    match "/500", action: :internal_server_error, via: :all
  end

  # == Pages
  root "homepage#show"
  get "/scottkit" => "scottkit#show"
  get "/resume" => "resume#show"
  get "/toronto" => "places#toronto"
  get "/gh" => redirect("https://github.com/hulloitskai/itskai", status: 302)

  # == Development
  if Rails.env.development?
    mount GoodJob::Engine => "/good_job"
    get "/test" => "test#show"
    get "/mailcatcher" => redirect("//localhost:1080", status: 302)
  end

  # == Administration
  unless Rails.env.development?
    authenticate :user, ->(user) {
      user = T.let(user, User)
      user.owner?
    } do
      mount GoodJob::Engine => "/good_job"
    end
  end
end
