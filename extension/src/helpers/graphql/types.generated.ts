export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string | number; output: string; }
  String: { input: string; output: string; }
  Boolean: { input: boolean; output: boolean; }
  Int: { input: number; output: number; }
  Float: { input: number; output: number; }
  /** An ISO 8601-encoded date */
  Date: { input: string; output: string; }
  /** An ISO 8601-encoded datetime */
  DateTime: { input: string; output: string; }
  /** Represents untyped JSON */
  JSON: { input: any; output: any; }
};

/** Autogenerated input type of ActivateScottkitSignal */
export type ActivateScottkitSignalInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  type: ScottkitSignalType;
};

/** Autogenerated return type of ActivateScottkitSignal. */
export type ActivateScottkitSignalPayload = {
  __typename?: 'ActivateScottkitSignalPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of AddJournalEntryComment */
export type AddJournalEntryCommentInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  entryId: Scalars['String']['input'];
  text: Scalars['String']['input'];
};

/** Autogenerated return type of AddJournalEntryComment. */
export type AddJournalEntryCommentPayload = {
  __typename?: 'AddJournalEntryCommentPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export type CookieInput = {
  domain: Scalars['String']['input'];
  expirationDate?: InputMaybe<Scalars['Int']['input']>;
  hostOnly: Scalars['Boolean']['input'];
  httpOnly: Scalars['Boolean']['input'];
  name: Scalars['String']['input'];
  path: Scalars['String']['input'];
  sameSite: Scalars['String']['input'];
  secure: Scalars['Boolean']['input'];
  session: Scalars['Boolean']['input'];
  value: Scalars['String']['input'];
};

export type ICloudCredentials = Node & {
  __typename?: 'ICloudCredentials';
  cookies?: Maybe<Scalars['String']['output']>;
  email: Scalars['String']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  password: Scalars['String']['output'];
  session?: Maybe<Scalars['JSON']['output']>;
};

export type InputFieldError = {
  __typename?: 'InputFieldError';
  field: Scalars['String']['output'];
  message: Scalars['String']['output'];
};

export type Mutation = {
  __typename?: 'Mutation';
  activateScottkitSignal: ActivateScottkitSignalPayload;
  addJournalEntryComment: AddJournalEntryCommentPayload;
  removeICloudCredentials: RemoveICloudCredentialsPayload;
  removeSpotifyCredentials: RemoveSpotifyCredentialsPayload;
  sendUserEmailVerificationInstructions: SendUserEmailVerificationInstructionsPayload;
  sendUserPasswordResetInstructions: SendUserPasswordResetInstructionsPayload;
  syncAllObsidianNotes: SyncAllObsidianNotesPayload;
  syncCookies: SyncCookiesPayload;
  testMutation: TestMutationPayload;
  updateICloudCredentials: UpdateICloudCredentialsPayload;
  updateUserEmail: UpdateUserEmailPayload;
  updateUserProfile: UpdateUserProfilePayload;
  verifyICloudSecurityCode: VerifyICloudSecurityCodePayload;
};


export type MutationActivateScottkitSignalArgs = {
  input: ActivateScottkitSignalInput;
};


export type MutationAddJournalEntryCommentArgs = {
  input: AddJournalEntryCommentInput;
};


export type MutationRemoveICloudCredentialsArgs = {
  input: RemoveICloudCredentialsInput;
};


export type MutationRemoveSpotifyCredentialsArgs = {
  input: RemoveSpotifyCredentialsInput;
};


export type MutationSendUserEmailVerificationInstructionsArgs = {
  input: SendUserEmailVerificationInstructionsInput;
};


export type MutationSendUserPasswordResetInstructionsArgs = {
  input: SendUserPasswordResetInstructionsInput;
};


export type MutationSyncAllObsidianNotesArgs = {
  input: SyncAllObsidianNotesInput;
};


export type MutationSyncCookiesArgs = {
  input: SyncCookiesInput;
};


export type MutationTestMutationArgs = {
  input: TestMutationInput;
};


export type MutationUpdateICloudCredentialsArgs = {
  input: UpdateICloudCredentialsInput;
};


export type MutationUpdateUserEmailArgs = {
  input: UpdateUserEmailInput;
};


export type MutationUpdateUserProfileArgs = {
  input: UpdateUserProfileInput;
};


export type MutationVerifyICloudSecurityCodeArgs = {
  input: VerifyICloudSecurityCodeInput;
};

/** An object with an ID. */
export type Node = {
  /** ID of the object. */
  id: Scalars['ID']['output'];
};

export type NotionComment = {
  __typename?: 'NotionComment';
  createdAt: Scalars['DateTime']['output'];
  id: Scalars['String']['output'];
  modifiedAt: Scalars['DateTime']['output'];
  richText: Scalars['JSON']['output'];
};

export type NotionCommentListing = {
  __typename?: 'NotionCommentListing';
  items: Array<NotionComment>;
  nextCursor?: Maybe<Scalars['String']['output']>;
};

export type NotionPage = {
  __typename?: 'NotionPage';
  blocks: Array<Scalars['JSON']['output']>;
  createdAt: Scalars['DateTime']['output'];
  id: Scalars['String']['output'];
  modifiedAt: Scalars['DateTime']['output'];
  title: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type NotionPageListing = {
  __typename?: 'NotionPageListing';
  items: Array<NotionPage>;
  nextCursor?: Maybe<Scalars['String']['output']>;
};

export type OAuthCredentials = Node & {
  __typename?: 'OAuthCredentials';
  accessToken?: Maybe<Scalars['String']['output']>;
  /** ID of the object. */
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
  refreshToken?: Maybe<Scalars['String']['output']>;
  uid: Scalars['String']['output'];
};

/** An object with an ID. */
export type ObsidianEntry = {
  createdAt: Scalars['DateTime']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
  referencedBy: Array<ObsidianNote>;
  title: Scalars['String']['output'];
  updatedAt: Scalars['DateTime']['output'];
};

export type ObsidianNote = Node & ObsidianEntry & {
  __typename?: 'ObsidianNote';
  aliases: Array<Scalars['String']['output']>;
  blurb?: Maybe<Scalars['String']['output']>;
  content?: Maybe<Scalars['String']['output']>;
  createdAt: Scalars['DateTime']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  isPublished: Scalars['Boolean']['output'];
  modifiedAt: Scalars['DateTime']['output'];
  name: Scalars['String']['output'];
  plainBlurb?: Maybe<Scalars['String']['output']>;
  referencedBy: Array<ObsidianNote>;
  references: Array<ObsidianEntry>;
  tags: Array<Scalars['String']['output']>;
  title: Scalars['String']['output'];
  updatedAt: Scalars['DateTime']['output'];
  url: Scalars['String']['output'];
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
  totalCount: Scalars['Int']['output'];
};

/** An edge in a connection. */
export type ObsidianNoteEdge = {
  __typename?: 'ObsidianNoteEdge';
  /** A cursor for use in pagination. */
  cursor: Scalars['String']['output'];
  /** The item at the end of the edge. */
  node: ObsidianNote;
};

export type ObsidianStub = Node & ObsidianEntry & {
  __typename?: 'ObsidianStub';
  createdAt: Scalars['DateTime']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
  referencedBy: Array<ObsidianNote>;
  title: Scalars['String']['output'];
  updatedAt: Scalars['DateTime']['output'];
};

/** Information about pagination in a connection. */
export type PageInfo = {
  __typename?: 'PageInfo';
  /** When paginating forwards, the cursor to continue. */
  endCursor?: Maybe<Scalars['String']['output']>;
  /** When paginating forwards, are there more items? */
  hasNextPage: Scalars['Boolean']['output'];
  /** When paginating backwards, are there more items? */
  hasPreviousPage: Scalars['Boolean']['output'];
  /** When paginating backwards, the cursor to continue. */
  startCursor?: Maybe<Scalars['String']['output']>;
};

export type Query = {
  __typename?: 'Query';
  activityStatus?: Maybe<Scalars['String']['output']>;
  /** Kai's contact email. */
  contactEmail: Scalars['String']['output'];
  /** What I'm currently listening to on Spotify! */
  currentlyPlaying?: Maybe<SpotifyCurrentlyPlaying>;
  /** Kai's personal iCloud credentials (#securityStartsHere). */
  icloudCredentials?: Maybe<ICloudCredentials>;
  journalEntries: NotionPageListing;
  journalEntryComments: NotionCommentListing;
  obsidianNote?: Maybe<ObsidianNote>;
  obsidianNoteByName?: Maybe<ObsidianNote>;
  obsidianNotes: ObsidianNoteConnection;
  passwordStrength: Scalars['Float']['output'];
  /** Kai's JSON Resume (https://jsonresume.org/). */
  resume: Scalars['JSON']['output'];
  /** Spotify OAuth credentials. */
  spotifyCredentials?: Maybe<OAuthCredentials>;
  testEcho: Scalars['String']['output'];
  /** Kai's current timezone. */
  timezone: Timezone;
  /** The currently authenticated user. */
  viewer?: Maybe<User>;
};


export type QueryJournalEntriesArgs = {
  pageSize?: InputMaybe<Scalars['Int']['input']>;
  startCursor?: InputMaybe<Scalars['String']['input']>;
};


export type QueryJournalEntryCommentsArgs = {
  entryId?: InputMaybe<Scalars['String']['input']>;
  pageSize?: InputMaybe<Scalars['Int']['input']>;
  startCursor?: InputMaybe<Scalars['String']['input']>;
};


export type QueryObsidianNoteArgs = {
  id: Scalars['ID']['input'];
};


export type QueryObsidianNoteByNameArgs = {
  name: Scalars['String']['input'];
};


export type QueryObsidianNotesArgs = {
  after?: InputMaybe<Scalars['String']['input']>;
  before?: InputMaybe<Scalars['String']['input']>;
  first?: InputMaybe<Scalars['Int']['input']>;
  last?: InputMaybe<Scalars['Int']['input']>;
  modifiedAfter?: InputMaybe<Scalars['DateTime']['input']>;
  modifiedBefore?: InputMaybe<Scalars['DateTime']['input']>;
};


export type QueryPasswordStrengthArgs = {
  password: Scalars['String']['input'];
};


export type QueryTestEchoArgs = {
  text?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated input type of RemoveICloudCredentials */
export type RemoveICloudCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of RemoveICloudCredentials. */
export type RemoveICloudCredentialsPayload = {
  __typename?: 'RemoveICloudCredentialsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of RemoveSpotifyCredentials */
export type RemoveSpotifyCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of RemoveSpotifyCredentials. */
export type RemoveSpotifyCredentialsPayload = {
  __typename?: 'RemoveSpotifyCredentialsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export enum ScottkitSignalType {
  Break = 'BREAK',
  Panic = 'PANIC',
  Rand = 'RAND'
}

/** Autogenerated input type of SendUserEmailVerificationInstructions */
export type SendUserEmailVerificationInstructionsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  email: Scalars['String']['input'];
};

/** Autogenerated return type of SendUserEmailVerificationInstructions. */
export type SendUserEmailVerificationInstructionsPayload = {
  __typename?: 'SendUserEmailVerificationInstructionsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of SendUserPasswordResetInstructions */
export type SendUserPasswordResetInstructionsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  email: Scalars['String']['input'];
};

/** Autogenerated return type of SendUserPasswordResetInstructions. */
export type SendUserPasswordResetInstructionsPayload = {
  __typename?: 'SendUserPasswordResetInstructionsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export type SpotifyAlbum = {
  __typename?: 'SpotifyAlbum';
  id: Scalars['String']['output'];
  imageUrl?: Maybe<Scalars['String']['output']>;
  name: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type SpotifyArtist = {
  __typename?: 'SpotifyArtist';
  id: Scalars['String']['output'];
  name: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type SpotifyCurrentlyPlaying = {
  __typename?: 'SpotifyCurrentlyPlaying';
  progressMilliseconds: Scalars['Int']['output'];
  track: SpotifyTrack;
};

export type SpotifyLyricLine = {
  __typename?: 'SpotifyLyricLine';
  isExplicit: Scalars['Boolean']['output'];
  startTimeMilliseconds: Scalars['Int']['output'];
  words: Scalars['String']['output'];
};

export type SpotifyTrack = {
  __typename?: 'SpotifyTrack';
  album: SpotifyAlbum;
  artists: Array<SpotifyArtist>;
  durationMilliseconds: Scalars['Int']['output'];
  id: Scalars['String']['output'];
  lyrics?: Maybe<Array<SpotifyLyricLine>>;
  name: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

export type Subscription = {
  __typename?: 'Subscription';
  activityStatus?: Maybe<Scalars['String']['output']>;
  /** What I'm currently listening to on Spotify! */
  currentlyPlaying?: Maybe<SpotifyCurrentlyPlaying>;
  testSubscription: Scalars['Int']['output'];
};

/** Autogenerated input type of SyncAllObsidianNotes */
export type SyncAllObsidianNotesInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  force?: InputMaybe<Scalars['Boolean']['input']>;
};

/** Autogenerated return type of SyncAllObsidianNotes. */
export type SyncAllObsidianNotesPayload = {
  __typename?: 'SyncAllObsidianNotesPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of SyncCookies */
export type SyncCookiesInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  cookies: Array<CookieInput>;
};

/** Autogenerated return type of SyncCookies. */
export type SyncCookiesPayload = {
  __typename?: 'SyncCookiesPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export type TestModel = {
  __typename?: 'TestModel';
  birthday?: Maybe<Scalars['Date']['output']>;
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
};

/** Autogenerated input type of TestMutation */
export type TestMutationInput = {
  birthday?: InputMaybe<Scalars['Date']['input']>;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  name: Scalars['String']['input'];
};

/** Autogenerated return type of TestMutation. */
export type TestMutationPayload = {
  __typename?: 'TestMutationPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  model?: Maybe<TestModel>;
  success: Scalars['Boolean']['output'];
};

export type Timezone = {
  __typename?: 'Timezone';
  abbreviation: Scalars['String']['output'];
  name: Scalars['String']['output'];
  offset: Scalars['String']['output'];
  offsetMinutes: Scalars['Int']['output'];
};

/** Autogenerated input type of UpdateICloudCredentials */
export type UpdateICloudCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  email: Scalars['String']['input'];
  password: Scalars['String']['input'];
};

/** Autogenerated return type of UpdateICloudCredentials. */
export type UpdateICloudCredentialsPayload = {
  __typename?: 'UpdateICloudCredentialsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  icloudCredentials?: Maybe<ICloudCredentials>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of UpdateUserEmail */
export type UpdateUserEmailInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  currentPassword: Scalars['String']['input'];
  email: Scalars['String']['input'];
};

/** Autogenerated return type of UpdateUserEmail. */
export type UpdateUserEmailPayload = {
  __typename?: 'UpdateUserEmailPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  success: Scalars['Boolean']['output'];
  user?: Maybe<User>;
};

/** Autogenerated input type of UpdateUserProfile */
export type UpdateUserProfileInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  name: Scalars['String']['input'];
};

/** Autogenerated return type of UpdateUserProfile. */
export type UpdateUserProfilePayload = {
  __typename?: 'UpdateUserProfilePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  success: Scalars['Boolean']['output'];
  user?: Maybe<User>;
};

export type User = Node & {
  __typename?: 'User';
  email: Scalars['String']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  isOwner: Scalars['Boolean']['output'];
  name: Scalars['String']['output'];
  unverifiedEmail?: Maybe<Scalars['String']['output']>;
};

/** Autogenerated input type of VerifyICloudSecurityCode */
export type VerifyICloudSecurityCodeInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  code: Scalars['String']['input'];
};

/** Autogenerated return type of VerifyICloudSecurityCode. */
export type VerifyICloudSecurityCodePayload = {
  __typename?: 'VerifyICloudSecurityCodePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  icloudCredentials: ICloudCredentials;
  success: Scalars['Boolean']['output'];
};
