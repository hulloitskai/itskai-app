export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: string;
  String: string;
  Boolean: boolean;
  Int: number;
  Float: number;
  /** An ISO 8601-encoded date */
  Date: string;
  /** An ISO 8601-encoded datetime */
  DateTime: string;
  /** Represents untyped JSON */
  JSON: any;
};

export type ICloudCredentials = Node & {
  __typename?: 'ICloudCredentials';
  cookies?: Maybe<Scalars['String']>;
  email: Scalars['String'];
  /** ID of the object. */
  id: Scalars['ID'];
  password: Scalars['String'];
  session?: Maybe<Scalars['JSON']>;
};

/** Autogenerated input type of ICloudCredentialsUpdate */
export type ICloudCredentialsUpdateInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  email: Scalars['String'];
  password: Scalars['String'];
};

/** Autogenerated return type of ICloudCredentialsUpdate. */
export type ICloudCredentialsUpdatePayload = {
  __typename?: 'ICloudCredentialsUpdatePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  errors?: Maybe<Array<InputFieldError>>;
  icloudCredentials?: Maybe<ICloudCredentials>;
  success: Scalars['Boolean'];
};

/** Autogenerated input type of ICloudCredentialsVerifySecurityCode */
export type ICloudCredentialsVerifySecurityCodeInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  code: Scalars['String'];
};

/** Autogenerated return type of ICloudCredentialsVerifySecurityCode. */
export type ICloudCredentialsVerifySecurityCodePayload = {
  __typename?: 'ICloudCredentialsVerifySecurityCodePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  icloudCredentials: ICloudCredentials;
  success: Scalars['Boolean'];
};

export type InputFieldError = {
  __typename?: 'InputFieldError';
  field: Scalars['String'];
  message: Scalars['String'];
};

export type Mutation = {
  __typename?: 'Mutation';
  icloudCredentialsUpdate: ICloudCredentialsUpdatePayload;
  icloudCredentialsVerifySecurityCode: ICloudCredentialsVerifySecurityCodePayload;
  notionCommentCreate: NotionCommentCreatePayload;
  obsidianNoteSynchronize: ObsidianNoteSynchronizePayload;
  testMutation: TestMutationPayload;
  userChangeEmail: UserChangeEmailPayload;
  userSendEmailVerificationInstructions: UserSendEmailVerificationInstructionsPayload;
  userSendPasswordResetInstructions: UserSendPasswordResetInstructionsPayload;
  userUpdate: UserUpdatePayload;
};


export type MutationIcloudCredentialsUpdateArgs = {
  input: ICloudCredentialsUpdateInput;
};


export type MutationIcloudCredentialsVerifySecurityCodeArgs = {
  input: ICloudCredentialsVerifySecurityCodeInput;
};


export type MutationNotionCommentCreateArgs = {
  input: NotionCommentCreateInput;
};


export type MutationObsidianNoteSynchronizeArgs = {
  input: ObsidianNoteSynchronizeInput;
};


export type MutationTestMutationArgs = {
  input: TestMutationInput;
};


export type MutationUserChangeEmailArgs = {
  input: UserChangeEmailInput;
};


export type MutationUserSendEmailVerificationInstructionsArgs = {
  input: UserSendEmailVerificationInstructionsInput;
};


export type MutationUserSendPasswordResetInstructionsArgs = {
  input: UserSendPasswordResetInstructionsInput;
};


export type MutationUserUpdateArgs = {
  input: UserUpdateInput;
};

/** An object with an ID. */
export type Node = {
  /** ID of the object. */
  id: Scalars['ID'];
};

export type NotionComment = {
  __typename?: 'NotionComment';
  createdAt: Scalars['DateTime'];
  id: Scalars['String'];
  modifiedAt: Scalars['DateTime'];
  richText: Scalars['JSON'];
};

/** Autogenerated input type of NotionCommentCreate */
export type NotionCommentCreateInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  pageId: Scalars['String'];
  text: Scalars['String'];
};

/** Autogenerated return type of NotionCommentCreate. */
export type NotionCommentCreatePayload = {
  __typename?: 'NotionCommentCreatePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  success: Scalars['Boolean'];
};

export type NotionCommentListing = {
  __typename?: 'NotionCommentListing';
  items: Array<NotionComment>;
  nextCursor?: Maybe<Scalars['String']>;
};

export type NotionPage = {
  __typename?: 'NotionPage';
  blocks: Scalars['JSON'];
  createdAt: Scalars['DateTime'];
  id: Scalars['String'];
  modifiedAt: Scalars['DateTime'];
  title: Scalars['String'];
};

export type NotionPageListing = {
  __typename?: 'NotionPageListing';
  items: Array<NotionPage>;
  nextCursor?: Maybe<Scalars['String']>;
};

export type OAuthCredentials = Node & {
  __typename?: 'OAuthCredentials';
  accessToken?: Maybe<Scalars['String']>;
  /** ID of the object. */
  id: Scalars['ID'];
  name: Scalars['String'];
  refreshToken?: Maybe<Scalars['String']>;
  uid: Scalars['String'];
};

/** An object with an ID. */
export type ObsidianEntry = {
  createdAt: Scalars['DateTime'];
  /** ID of the object. */
  id: Scalars['ID'];
  name: Scalars['String'];
  referencedBy: Array<ObsidianNote>;
  title: Scalars['String'];
  updatedAt: Scalars['DateTime'];
};

export type ObsidianNote = Node & ObsidianEntry & {
  __typename?: 'ObsidianNote';
  aliases: Array<Scalars['String']>;
  blurb?: Maybe<Scalars['String']>;
  content?: Maybe<Scalars['String']>;
  createdAt: Scalars['DateTime'];
  /** ID of the object. */
  id: Scalars['ID'];
  isPublished: Scalars['Boolean'];
  modifiedAt: Scalars['DateTime'];
  name: Scalars['String'];
  plainBlurb?: Maybe<Scalars['String']>;
  referencedBy: Array<ObsidianNote>;
  references: Array<ObsidianEntry>;
  tags: Array<Scalars['String']>;
  title: Scalars['String'];
  updatedAt: Scalars['DateTime'];
  url: Scalars['String'];
};

/** The connection type for ObsidianNote. */
export type ObsidianNoteConnection = {
  __typename?: 'ObsidianNoteConnection';
  /** A list of edges. */
  edges: Array<ObsidianNoteEdge>;
  /** A list of nodes. */
  nodes: Array<ObsidianNote>;
  /** Information to aid in pagination. */
  pageInfo: PageInfo;
  totalCount: Scalars['Int'];
};

/** An edge in a connection. */
export type ObsidianNoteEdge = {
  __typename?: 'ObsidianNoteEdge';
  /** A cursor for use in pagination. */
  cursor: Scalars['String'];
  /** The item at the end of the edge. */
  node: ObsidianNote;
};

/** Autogenerated input type of ObsidianNoteSynchronize */
export type ObsidianNoteSynchronizeInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  force?: InputMaybe<Scalars['Boolean']>;
};

/** Autogenerated return type of ObsidianNoteSynchronize. */
export type ObsidianNoteSynchronizePayload = {
  __typename?: 'ObsidianNoteSynchronizePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  success: Scalars['Boolean'];
};

export type ObsidianStub = Node & ObsidianEntry & {
  __typename?: 'ObsidianStub';
  createdAt: Scalars['DateTime'];
  /** ID of the object. */
  id: Scalars['ID'];
  name: Scalars['String'];
  referencedBy: Array<ObsidianNote>;
  title: Scalars['String'];
  updatedAt: Scalars['DateTime'];
};

/** Information about pagination in a connection. */
export type PageInfo = {
  __typename?: 'PageInfo';
  /** When paginating forwards, the cursor to continue. */
  endCursor?: Maybe<Scalars['String']>;
  /** When paginating forwards, are there more items? */
  hasNextPage: Scalars['Boolean'];
  /** When paginating backwards, are there more items? */
  hasPreviousPage: Scalars['Boolean'];
  /** When paginating backwards, the cursor to continue. */
  startCursor?: Maybe<Scalars['String']>;
};

export type Query = {
  __typename?: 'Query';
  activityStatus?: Maybe<Scalars['String']>;
  /** Kai's contact email. */
  contactEmail: Scalars['String'];
  /** What I'm currently listening to on Spotify! */
  currentlyPlaying?: Maybe<SpotifyTrack>;
  /** Kai's personal iCloud credentials (#securityStartsHere). */
  icloudCredentials?: Maybe<ICloudCredentials>;
  /** Linear OAuth credentials. */
  linearCredentials?: Maybe<OAuthCredentials>;
  notionComments: NotionCommentListing;
  notionEntries: NotionPageListing;
  obsidianNote?: Maybe<ObsidianNote>;
  obsidianNoteByName?: Maybe<ObsidianNote>;
  obsidianNotes: ObsidianNoteConnection;
  passwordStrength: Scalars['Float'];
  /** Kai's JSON Resume (https://jsonresume.org/). */
  resume: Scalars['JSON'];
  /** Spotify OAuth credentials. */
  spotifyCredentials?: Maybe<OAuthCredentials>;
  testEcho: Scalars['String'];
  /** Kai's current timezone. */
  timezone: Timezone;
  /** The currently authenticated user. */
  viewer?: Maybe<User>;
};


export type QueryNotionCommentsArgs = {
  blockId?: InputMaybe<Scalars['String']>;
  pageSize?: InputMaybe<Scalars['Int']>;
  startCursor?: InputMaybe<Scalars['String']>;
};


export type QueryNotionEntriesArgs = {
  pageSize?: InputMaybe<Scalars['Int']>;
  startCursor?: InputMaybe<Scalars['String']>;
};


export type QueryObsidianNoteArgs = {
  id: Scalars['ID'];
};


export type QueryObsidianNoteByNameArgs = {
  name: Scalars['String'];
};


export type QueryObsidianNotesArgs = {
  after?: InputMaybe<Scalars['String']>;
  before?: InputMaybe<Scalars['String']>;
  first?: InputMaybe<Scalars['Int']>;
  last?: InputMaybe<Scalars['Int']>;
  modifiedAfter?: InputMaybe<Scalars['DateTime']>;
  modifiedBefore?: InputMaybe<Scalars['DateTime']>;
};


export type QueryPasswordStrengthArgs = {
  password: Scalars['String'];
};


export type QueryTestEchoArgs = {
  text?: InputMaybe<Scalars['String']>;
};

export type SpotifyAlbum = {
  __typename?: 'SpotifyAlbum';
  id: Scalars['String'];
  imageUrl?: Maybe<Scalars['String']>;
  name: Scalars['String'];
  url: Scalars['String'];
};

export type SpotifyArtist = {
  __typename?: 'SpotifyArtist';
  id: Scalars['String'];
  name: Scalars['String'];
  url: Scalars['String'];
};

export type SpotifyTrack = {
  __typename?: 'SpotifyTrack';
  album: SpotifyAlbum;
  artists: Array<SpotifyArtist>;
  id: Scalars['String'];
  name: Scalars['String'];
  url: Scalars['String'];
};

export type Subscription = {
  __typename?: 'Subscription';
  activityStatus?: Maybe<Scalars['String']>;
  /** What I'm currently listening to on Spotify! */
  currentlyPlaying?: Maybe<SpotifyTrack>;
  testSubscription: Scalars['Int'];
};

export type TestModel = {
  __typename?: 'TestModel';
  birthday?: Maybe<Scalars['Date']>;
  id: Scalars['ID'];
  name: Scalars['String'];
};

/** Autogenerated input type of TestMutation */
export type TestMutationInput = {
  birthday?: InputMaybe<Scalars['Date']>;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  name: Scalars['String'];
};

/** Autogenerated return type of TestMutation. */
export type TestMutationPayload = {
  __typename?: 'TestMutationPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  errors?: Maybe<Array<InputFieldError>>;
  model?: Maybe<TestModel>;
  success: Scalars['Boolean'];
};

export type Timezone = {
  __typename?: 'Timezone';
  abbreviation: Scalars['String'];
  name: Scalars['String'];
  offset: Scalars['String'];
  offsetMinutes: Scalars['Int'];
};

export type User = Node & {
  __typename?: 'User';
  email: Scalars['String'];
  /** ID of the object. */
  id: Scalars['ID'];
  isOwner: Scalars['Boolean'];
  name: Scalars['String'];
  unverifiedEmail?: Maybe<Scalars['String']>;
};

/** Autogenerated input type of UserChangeEmail */
export type UserChangeEmailInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  currentPassword: Scalars['String'];
  email: Scalars['String'];
};

/** Autogenerated return type of UserChangeEmail. */
export type UserChangeEmailPayload = {
  __typename?: 'UserChangeEmailPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  errors?: Maybe<Array<InputFieldError>>;
  success: Scalars['Boolean'];
  user?: Maybe<User>;
};

/** Autogenerated input type of UserSendEmailVerificationInstructions */
export type UserSendEmailVerificationInstructionsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  email: Scalars['String'];
};

/** Autogenerated return type of UserSendEmailVerificationInstructions. */
export type UserSendEmailVerificationInstructionsPayload = {
  __typename?: 'UserSendEmailVerificationInstructionsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  success: Scalars['Boolean'];
};

/** Autogenerated input type of UserSendPasswordResetInstructions */
export type UserSendPasswordResetInstructionsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  email: Scalars['String'];
};

/** Autogenerated return type of UserSendPasswordResetInstructions. */
export type UserSendPasswordResetInstructionsPayload = {
  __typename?: 'UserSendPasswordResetInstructionsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  success: Scalars['Boolean'];
};

/** Autogenerated input type of UserUpdate */
export type UserUpdateInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  name: Scalars['String'];
};

/** Autogenerated return type of UserUpdate. */
export type UserUpdatePayload = {
  __typename?: 'UserUpdatePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  errors?: Maybe<Array<InputFieldError>>;
  success: Scalars['Boolean'];
  user?: Maybe<User>;
};
