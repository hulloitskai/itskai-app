import { Text } from "@mantine/core";

import AppLayout from "~/components/AppLayout";
import RequestEmailVerificationPageForm from "~/components/RequestEmailVerificationPageForm";

export interface RequestEmailVerificationPageProps extends SharedPageProps {}

const RequestEmailVerificationPage: PageComponent<
  RequestEmailVerificationPageProps
> = () => (
  <Card w={380} withBorder>
    <Stack gap="xs">
      <Stack gap={4}>
        <Title size="h3" ta="center">
          Re-send verification email
        </Title>
        <Text size="sm" c="dimmed" style={{ lineHeight: 1.4 }}>
          Enter the email address associated with your account and we&apos;ll
          send you a link to verify your account.
        </Text>
      </Stack>
      <RequestEmailVerificationPageForm />
      <Divider />
      <List listStyleType="none" fz="xs">
        <List.Item>
          <Text span inherit c="gray.6">
            <Anchor
              component={Link}
              href={routes.usersSessions.new.path()}
              inherit
            >
              Sign in
            </Anchor>{" "}
            or{" "}
            <Anchor
              component={Link}
              href={routes.usersRegistrations.new.path()}
              inherit
            >
              Sign up
            </Anchor>
          </Text>
        </List.Item>
        <List.Item>
          <Anchor
            component={Link}
            href={routes.usersPasswords.new.path()}
            inherit
          >
            Forgot your password?
          </Anchor>
        </List.Item>
      </List>
    </Stack>
  </Card>
);

RequestEmailVerificationPage.layout = page => (
  <AppLayout title="Request email verification">
    <Center style={{ flexGrow: 1 }}>{page}</Center>
  </AppLayout>
);

export default RequestEmailVerificationPage;
