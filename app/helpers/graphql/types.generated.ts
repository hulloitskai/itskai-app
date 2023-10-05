export type Maybe<T> = T | null;
export type InputMaybe<T> = Maybe<T>;
export type Exact<T extends { [key: string]: unknown }> = { [K in keyof T]: T[K] };
export type MakeOptional<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]?: Maybe<T[SubKey]> };
export type MakeMaybe<T, K extends keyof T> = Omit<T, K> & { [SubKey in K]: Maybe<T[SubKey]> };
export type MakeEmpty<T extends { [key: string]: unknown }, K extends keyof T> = { [_ in K]?: never };
export type Incremental<T> = T | { [P in keyof T]?: P extends ' $fragmentName' | '__typename' ? T[P] : never };
/** All built-in and custom scalars, mapped to their actual values */
export type Scalars = {
  ID: { input: string; output: string; }
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
  signal: ScottkitSignal;
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
  entryId: Scalars['ID']['input'];
  text: Scalars['String']['input'];
};

/** Autogenerated return type of AddJournalEntryComment. */
export type AddJournalEntryCommentPayload = {
  __typename?: 'AddJournalEntryCommentPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  comment: NotionComment;
  success: Scalars['Boolean']['output'];
};

export type Coordinates = {
  __typename?: 'Coordinates';
  latitude: Scalars['Float']['output'];
  longitude: Scalars['Float']['output'];
};

/** Autogenerated input type of CreateLocationAccessGrant */
export type CreateLocationAccessGrantInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  expiresInSeconds: Scalars['Int']['input'];
  password: Scalars['String']['input'];
  recipient: Scalars['String']['input'];
};

/** Autogenerated return type of CreateLocationAccessGrant. */
export type CreateLocationAccessGrantPayload = {
  __typename?: 'CreateLocationAccessGrantPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  grant?: Maybe<LocationAccessGrant>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of CreateSenecaMoodLog */
export type CreateSenecaMoodLogInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  valence: Scalars['Int']['input'];
};

/** Autogenerated return type of CreateSenecaMoodLog. */
export type CreateSenecaMoodLogPayload = {
  __typename?: 'CreateSenecaMoodLogPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  errors?: Maybe<Array<InputFieldError>>;
  log?: Maybe<SenecaMoodLog>;
  success: Scalars['Boolean']['output'];
};

export type CurrentlyPlaying = {
  __typename?: 'CurrentlyPlaying';
  progressMilliseconds: Scalars['Int']['output'];
  track: Track;
};

/** Autogenerated input type of DeleteLocationAccessGrant */
export type DeleteLocationAccessGrantInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  grantId: Scalars['ID']['input'];
};

/** Autogenerated return type of DeleteLocationAccessGrant. */
export type DeleteLocationAccessGrantPayload = {
  __typename?: 'DeleteLocationAccessGrantPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
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

export type Image = Node & {
  __typename?: 'Image';
  /** ID of the object. */
  id: Scalars['ID']['output'];
  signedId: Scalars['String']['output'];
  url: Scalars['String']['output'];
};


export type ImageUrlArgs = {
  size?: InputMaybe<ImageSize>;
};

export type ImageInput = {
  signedId: Scalars['String']['input'];
};

export enum ImageSize {
  Lg = 'LG',
  Md = 'MD',
  Sm = 'SM'
}

/** Autogenerated input type of ImportJournalEntries */
export type ImportJournalEntriesInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of ImportJournalEntries. */
export type ImportJournalEntriesPayload = {
  __typename?: 'ImportJournalEntriesPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of ImportLocationLogs */
export type ImportLocationLogsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of ImportLocationLogs. */
export type ImportLocationLogsPayload = {
  __typename?: 'ImportLocationLogsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export type InputFieldError = {
  __typename?: 'InputFieldError';
  field: Scalars['String']['output'];
  message: Scalars['String']['output'];
};

export type InstagramCredentials = Node & {
  __typename?: 'InstagramCredentials';
  /** ID of the object. */
  id: Scalars['ID']['output'];
  password: Scalars['String']['output'];
  session?: Maybe<Scalars['JSON']['output']>;
  username: Scalars['String']['output'];
};

export type JournalEntry = Node & {
  __typename?: 'JournalEntry';
  content: Array<Scalars['JSON']['output']>;
  /** ID of the object. */
  id: Scalars['ID']['output'];
  modifiedAt: Scalars['DateTime']['output'];
  nextEntryId?: Maybe<Scalars['ID']['output']>;
  startedAt: Scalars['DateTime']['output'];
  title: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

/** Autogenerated input type of LikePensieveMessage */
export type LikePensieveMessageInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  messageId: Scalars['ID']['input'];
};

/** Autogenerated return type of LikePensieveMessage. */
export type LikePensieveMessagePayload = {
  __typename?: 'LikePensieveMessagePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  message: PensieveMessage;
  success: Scalars['Boolean']['output'];
};

export type LocationAccessGrant = Node & {
  __typename?: 'LocationAccessGrant';
  createdAt: Scalars['DateTime']['output'];
  expiresAt: Scalars['DateTime']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  password: Scalars['String']['output'];
  recipient: Scalars['String']['output'];
};

export type LocationDetails = {
  __typename?: 'LocationDetails';
  address: Scalars['String']['output'];
  coordinates: Coordinates;
  expiresAt: Scalars['DateTime']['output'];
  trail: Array<LocationTrailMarker>;
};

export type LocationLog = Node & {
  __typename?: 'LocationLog';
  approximateAddress: Scalars['String']['output'];
  approximateCoordinates: Coordinates;
  details: LocationDetails;
  googleMapsAreaUrl: Scalars['String']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  timestamp: Scalars['DateTime']['output'];
};


export type LocationLogDetailsArgs = {
  password: Scalars['String']['input'];
};

export type LocationTrailMarker = {
  __typename?: 'LocationTrailMarker';
  coordinates: Coordinates;
  id: Scalars['ID']['output'];
  timestamp: Scalars['DateTime']['output'];
};

export type LyricLine = {
  __typename?: 'LyricLine';
  isExplicit: Scalars['Boolean']['output'];
  startTimeMilliseconds: Scalars['Int']['output'];
  words: Scalars['String']['output'];
};

export type Mutation = {
  __typename?: 'Mutation';
  activateScottkitSignal: ActivateScottkitSignalPayload;
  addJournalEntryComment: AddJournalEntryCommentPayload;
  createLocationAccessGrant: CreateLocationAccessGrantPayload;
  createSenecaMoodLog: CreateSenecaMoodLogPayload;
  deleteLocationAccessGrant: DeleteLocationAccessGrantPayload;
  importJournalEntries: ImportJournalEntriesPayload;
  importLocationLogs: ImportLocationLogsPayload;
  likePensieveMessage: LikePensieveMessagePayload;
  removeGoogleCredentials: RemoveGoogleCredentialsPayload;
  removeICloudCredentials: RemoveICloudCredentialsPayload;
  removeInstagramCredentials: RemoveInstagramCredentialsPayload;
  removeSpotifyCredentials: RemoveSpotifyCredentialsPayload;
  requestUserEmailVerification: RequestUserEmailVerificationPayload;
  requestUserPasswordReset: RequestUserPasswordResetPayload;
  sendPensieveMessage: SendPensieveMessagePayload;
  testMutation: TestMutationPayload;
  unlikePensieveMessage: UnlikePensieveMessagePayload;
  updateICloudCredentials: UpdateICloudCredentialsPayload;
  updateInstagramCredentials: UpdateInstagramCredentialsPayload;
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


export type MutationCreateLocationAccessGrantArgs = {
  input: CreateLocationAccessGrantInput;
};


export type MutationCreateSenecaMoodLogArgs = {
  input: CreateSenecaMoodLogInput;
};


export type MutationDeleteLocationAccessGrantArgs = {
  input: DeleteLocationAccessGrantInput;
};


export type MutationImportJournalEntriesArgs = {
  input: ImportJournalEntriesInput;
};


export type MutationImportLocationLogsArgs = {
  input: ImportLocationLogsInput;
};


export type MutationLikePensieveMessageArgs = {
  input: LikePensieveMessageInput;
};


export type MutationRemoveGoogleCredentialsArgs = {
  input: RemoveGoogleCredentialsInput;
};


export type MutationRemoveICloudCredentialsArgs = {
  input: RemoveICloudCredentialsInput;
};


export type MutationRemoveInstagramCredentialsArgs = {
  input: RemoveInstagramCredentialsInput;
};


export type MutationRemoveSpotifyCredentialsArgs = {
  input: RemoveSpotifyCredentialsInput;
};


export type MutationRequestUserEmailVerificationArgs = {
  input: RequestUserEmailVerificationInput;
};


export type MutationRequestUserPasswordResetArgs = {
  input: RequestUserPasswordResetInput;
};


export type MutationSendPensieveMessageArgs = {
  input: SendPensieveMessageInput;
};


export type MutationTestMutationArgs = {
  input: TestMutationInput;
};


export type MutationUnlikePensieveMessageArgs = {
  input: UnlikePensieveMessageInput;
};


export type MutationUpdateICloudCredentialsArgs = {
  input: UpdateICloudCredentialsInput;
};


export type MutationUpdateInstagramCredentialsArgs = {
  input: UpdateInstagramCredentialsInput;
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

export type OAuthCredentials = Node & {
  __typename?: 'OAuthCredentials';
  /** ID of the object. */
  id: Scalars['ID']['output'];
  name: Scalars['String']['output'];
  refreshToken?: Maybe<Scalars['String']['output']>;
  uid: Scalars['String']['output'];
};

export type PensieveMessage = Node & {
  __typename?: 'PensieveMessage';
  from: PensieveMessageSender;
  /** ID of the object. */
  id: Scalars['ID']['output'];
  isEdited: Scalars['Boolean']['output'];
  likedByViewer: Scalars['Boolean']['output'];
  likes: Scalars['Int']['output'];
  text: Scalars['String']['output'];
  timestamp: Scalars['DateTime']['output'];
};

export enum PensieveMessageSender {
  Bot = 'BOT',
  User = 'USER'
}

export type Query = {
  __typename?: 'Query';
  activityStatus?: Maybe<Scalars['String']['output']>;
  announcement?: Maybe<Scalars['String']['output']>;
  /** When the server was booted. */
  bootedAt: Scalars['DateTime']['output'];
  contactEmail: Scalars['String']['output'];
  currentlyPlaying?: Maybe<CurrentlyPlaying>;
  googleCredentials?: Maybe<OAuthCredentials>;
  icloudCredentials?: Maybe<ICloudCredentials>;
  imageBySignedId?: Maybe<Image>;
  instagramCredentials?: Maybe<InstagramCredentials>;
  journalEntry?: Maybe<JournalEntry>;
  journalEntryComments: Array<NotionComment>;
  location?: Maybe<LocationLog>;
  locationAccessGrants: Array<LocationAccessGrant>;
  passwordStrength: Scalars['Float']['output'];
  pensieveMessages: Array<PensieveMessage>;
  resume: Scalars['JSON']['output'];
  spotifyCredentials?: Maybe<OAuthCredentials>;
  testEcho: Scalars['String']['output'];
  timezone: Timezone;
  user?: Maybe<User>;
  viewer?: Maybe<User>;
};


export type QueryImageBySignedIdArgs = {
  signedId: Scalars['String']['input'];
};


export type QueryJournalEntryArgs = {
  id: Scalars['ID']['input'];
};


export type QueryJournalEntryCommentsArgs = {
  entryId: Scalars['ID']['input'];
};


export type QueryPasswordStrengthArgs = {
  password: Scalars['String']['input'];
};


export type QueryPensieveMessagesArgs = {
  to?: InputMaybe<Scalars['String']['input']>;
};


export type QueryResumeArgs = {
  variant?: InputMaybe<Scalars['String']['input']>;
};


export type QueryTestEchoArgs = {
  text?: InputMaybe<Scalars['String']['input']>;
};


export type QueryUserArgs = {
  id: Scalars['ID']['input'];
};

/** Autogenerated input type of RemoveGoogleCredentials */
export type RemoveGoogleCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of RemoveGoogleCredentials. */
export type RemoveGoogleCredentialsPayload = {
  __typename?: 'RemoveGoogleCredentialsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
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

/** Autogenerated input type of RemoveInstagramCredentials */
export type RemoveInstagramCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
};

/** Autogenerated return type of RemoveInstagramCredentials. */
export type RemoveInstagramCredentialsPayload = {
  __typename?: 'RemoveInstagramCredentialsPayload';
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

/** Autogenerated input type of RequestUserEmailVerification */
export type RequestUserEmailVerificationInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  email: Scalars['String']['input'];
};

/** Autogenerated return type of RequestUserEmailVerification. */
export type RequestUserEmailVerificationPayload = {
  __typename?: 'RequestUserEmailVerificationPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of RequestUserPasswordReset */
export type RequestUserPasswordResetInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  email: Scalars['String']['input'];
};

/** Autogenerated return type of RequestUserPasswordReset. */
export type RequestUserPasswordResetPayload = {
  __typename?: 'RequestUserPasswordResetPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
};

export enum ScottkitSignal {
  Break = 'BREAK',
  Panic = 'PANIC',
  Rand = 'RAND'
}

/** Autogenerated input type of SendPensieveMessage */
export type SendPensieveMessageInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  text: Scalars['String']['input'];
};

/** Autogenerated return type of SendPensieveMessage. */
export type SendPensieveMessagePayload = {
  __typename?: 'SendPensieveMessagePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  success: Scalars['Boolean']['output'];
  user: PensieveMessage;
};

export type SenecaMoodLog = Node & {
  __typename?: 'SenecaMoodLog';
  createdAt: Scalars['DateTime']['output'];
  /** ID of the object. */
  id: Scalars['ID']['output'];
  valence: Scalars['Int']['output'];
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

export type Subscription = {
  __typename?: 'Subscription';
  activityStatus?: Maybe<Scalars['String']['output']>;
  currentlyPlaying?: Maybe<CurrentlyPlaying>;
  location?: Maybe<LocationLog>;
  pensieveMessage?: Maybe<PensieveMessage>;
  testSubscription: Scalars['Int']['output'];
};


export type SubscriptionPensieveMessageArgs = {
  to?: InputMaybe<Scalars['String']['input']>;
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

export type Track = {
  __typename?: 'Track';
  album: SpotifyAlbum;
  artists: Array<SpotifyArtist>;
  durationMilliseconds: Scalars['Int']['output'];
  id: Scalars['String']['output'];
  lyrics?: Maybe<Array<LyricLine>>;
  name: Scalars['String']['output'];
  url: Scalars['String']['output'];
};

/** Autogenerated input type of UnlikePensieveMessage */
export type UnlikePensieveMessageInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  messageId: Scalars['ID']['input'];
};

/** Autogenerated return type of UnlikePensieveMessage. */
export type UnlikePensieveMessagePayload = {
  __typename?: 'UnlikePensieveMessagePayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  message: PensieveMessage;
  success: Scalars['Boolean']['output'];
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
  credentials?: Maybe<ICloudCredentials>;
  errors?: Maybe<Array<InputFieldError>>;
  success: Scalars['Boolean']['output'];
};

/** Autogenerated input type of UpdateInstagramCredentials */
export type UpdateInstagramCredentialsInput = {
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']['input']>;
  password: Scalars['String']['input'];
  securityCode: Scalars['String']['input'];
  username: Scalars['String']['input'];
};

/** Autogenerated return type of UpdateInstagramCredentials. */
export type UpdateInstagramCredentialsPayload = {
  __typename?: 'UpdateInstagramCredentialsPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']['output']>;
  credentials?: Maybe<InstagramCredentials>;
  errors?: Maybe<Array<InputFieldError>>;
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
  avatar?: InputMaybe<ImageInput>;
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
  avatar?: Maybe<Image>;
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
  credentials: ICloudCredentials;
  success: Scalars['Boolean']['output'];
};
