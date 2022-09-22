# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `omniauth-facebook` gem.
# Please instead update this file by running `bin/tapioca gem omniauth-facebook`.

module OmniAuth
  class << self
    def config; end
    def configure; end
    def logger; end
    def mock_auth_for(provider); end
    def strategies; end
  end
end

module OmniAuth::Facebook; end

class OmniAuth::Facebook::SignedRequest
  # @return [SignedRequest] a new instance of SignedRequest
  def initialize(value, secret); end

  def payload; end

  # Returns the value of attribute secret.
  def secret; end

  # Returns the value of attribute value.
  def value; end

  private

  def base64_decode_url(value); end
  def parse_signed_request; end

  # @return [Boolean]
  def valid_signature?(signature, payload, algorithm = T.unsafe(nil)); end

  class << self
    def parse(value, secret); end
  end
end

OmniAuth::Facebook::SignedRequest::SUPPORTED_ALGORITHM = T.let(T.unsafe(nil), String)
class OmniAuth::Facebook::SignedRequest::UnknownSignatureAlgorithmError < ::NotImplementedError; end
OmniAuth::Facebook::VERSION = T.let(T.unsafe(nil), String)
module OmniAuth::Strategies; end

class OmniAuth::Strategies::Facebook < ::OmniAuth::Strategies::OAuth2
  def access_token_options; end

  # You can pass +display+, +scope+, or +auth_type+ params to the auth request, if you need to set them dynamically.
  # You can also set these options in the OmniAuth config :authorize_params option.
  #
  # For example: /auth/facebook?display=popup
  def authorize_params; end

  def callback_phase; end

  # NOTE If we're using code from the signed request then FB sets the redirect_uri to '' during the authorize
  #      phase and it must match during the access_token phase:
  #      https://github.com/facebook/facebook-php-sdk/blob/master/src/base_facebook.php#L477
  def callback_url; end

  def info_options; end
  def raw_info; end

  protected

  def build_access_token; end

  private

  def appsecret_proof; end
  def image_url(uid, options); end
  def prune!(hash); end
  def raw_signed_request_from_cookie; end
  def signed_request_from_cookie; end

  # Picks the authorization code in order, from:
  #
  # 1. The request 'code' param (manual callback from standard server-side flow)
  # 2. A signed request from cookie (passed from the client during the client-side flow)
  def with_authorization_code!; end
end

OmniAuth::Strategies::Facebook::DEFAULT_FACEBOOK_API_VERSION = T.let(T.unsafe(nil), String)
OmniAuth::Strategies::Facebook::DEFAULT_SCOPE = T.let(T.unsafe(nil), String)
class OmniAuth::Strategies::Facebook::NoAuthorizationCodeError < ::StandardError; end
