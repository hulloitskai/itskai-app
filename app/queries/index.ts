import { TypedDocumentNode as DocumentNode } from '@graphql-typed-document-node/core';
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
  /** An ISO 8601-encoded datetime */
  DateTime: any;
  /** Represents untyped JSON */
  JSON: any;
};

export type Mutation = {
  __typename?: 'Mutation';
  testMutation?: Maybe<TestMutationPayload>;
};


export type MutationTestMutationArgs = {
  input: TestMutationInput;
};

export type Query = {
  __typename?: 'Query';
  contactEmail: Scalars['String'];
  /** Kai's JSON Resume (https://jsonresume.org/) */
  resume: Scalars['JSON'];
  testEcho: Scalars['String'];
};


export type QueryTestEchoArgs = {
  text?: InputMaybe<Scalars['String']>;
};

export type SpotifyTrack = {
  __typename?: 'SpotifyTrack';
  name?: Maybe<Scalars['String']>;
};

export type Subscription = {
  __typename?: 'Subscription';
  currentlyPlaying?: Maybe<SpotifyTrack>;
  testSubscription: Scalars['Int'];
};

export type TestModel = {
  __typename?: 'TestModel';
  birthday?: Maybe<Scalars['DateTime']>;
  id: Scalars['ID'];
  name: Scalars['String'];
};

/** Autogenerated input type of TestMutation */
export type TestMutationInput = {
  birthday?: InputMaybe<Scalars['DateTime']>;
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: InputMaybe<Scalars['String']>;
  name: Scalars['String'];
};

/** Autogenerated return type of TestMutation */
export type TestMutationPayload = {
  __typename?: 'TestMutationPayload';
  /** A unique identifier for the client performing the mutation. */
  clientMutationId?: Maybe<Scalars['String']>;
  errors?: Maybe<Array<ValidationError>>;
  model?: Maybe<TestModel>;
};

export type ValidationError = {
  __typename?: 'ValidationError';
  field?: Maybe<Scalars['String']>;
  message?: Maybe<Scalars['String']>;
};

export type ContactEmailQueryVariables = Exact<{ [key: string]: never; }>;


export type ContactEmailQuery = { __typename?: 'Query', email: string };

export type CurrentlyPlayingSubscriptionVariables = Exact<{ [key: string]: never; }>;


export type CurrentlyPlayingSubscription = { __typename?: 'Subscription', currentlyPlaying?: { __typename?: 'SpotifyTrack', name?: string | null } | null };

export type ResumePageQueryVariables = Exact<{ [key: string]: never; }>;


export type ResumePageQuery = { __typename?: 'Query', resume: any };

export type TestFeedSubscriptionVariables = Exact<{ [key: string]: never; }>;


export type TestFeedSubscription = { __typename?: 'Subscription', testSubscription: number };

export type TestMutationVariables = Exact<{
  input: TestMutationInput;
}>;


export type TestMutation = { __typename?: 'Mutation', testMutation?: { __typename?: 'TestMutationPayload', model?: { __typename?: 'TestModel', id: string, name: string, birthday?: any | null } | null, errors?: Array<{ __typename?: 'ValidationError', field?: string | null, message?: string | null }> | null } | null };

export type TestPageQueryVariables = Exact<{
  name: Scalars['String'];
}>;


export type TestPageQuery = { __typename?: 'Query', testEcho: string };


export const ContactEmailQueryDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"ContactEmailQuery"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","alias":{"kind":"Name","value":"email"},"name":{"kind":"Name","value":"contactEmail"}}]}}]} as unknown as DocumentNode<ContactEmailQuery, ContactEmailQueryVariables>;
export const CurrentlyPlayingSubscriptionDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"subscription","name":{"kind":"Name","value":"CurrentlyPlayingSubscription"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"currentlyPlaying"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"name"}}]}}]}}]} as unknown as DocumentNode<CurrentlyPlayingSubscription, CurrentlyPlayingSubscriptionVariables>;
export const ResumePageQueryDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"ResumePageQuery"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"resume"}}]}}]} as unknown as DocumentNode<ResumePageQuery, ResumePageQueryVariables>;
export const TestFeedSubscriptionDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"subscription","name":{"kind":"Name","value":"TestFeedSubscription"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"testSubscription"}}]}}]} as unknown as DocumentNode<TestFeedSubscription, TestFeedSubscriptionVariables>;
export const TestMutationDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"mutation","name":{"kind":"Name","value":"TestMutation"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"input"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"TestMutationInput"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"testMutation"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"input"},"value":{"kind":"Variable","name":{"kind":"Name","value":"input"}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"model"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"id"}},{"kind":"Field","name":{"kind":"Name","value":"name"}},{"kind":"Field","name":{"kind":"Name","value":"birthday"}}]}},{"kind":"Field","name":{"kind":"Name","value":"errors"},"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"field"}},{"kind":"Field","name":{"kind":"Name","value":"message"}}]}}]}}]}}]} as unknown as DocumentNode<TestMutation, TestMutationVariables>;
export const TestPageQueryDocument = {"kind":"Document","definitions":[{"kind":"OperationDefinition","operation":"query","name":{"kind":"Name","value":"TestPageQuery"},"variableDefinitions":[{"kind":"VariableDefinition","variable":{"kind":"Variable","name":{"kind":"Name","value":"name"}},"type":{"kind":"NonNullType","type":{"kind":"NamedType","name":{"kind":"Name","value":"String"}}}}],"selectionSet":{"kind":"SelectionSet","selections":[{"kind":"Field","name":{"kind":"Name","value":"testEcho"},"arguments":[{"kind":"Argument","name":{"kind":"Name","value":"text"},"value":{"kind":"Variable","name":{"kind":"Name","value":"name"}}}]}]}}]} as unknown as DocumentNode<TestPageQuery, TestPageQueryVariables>;