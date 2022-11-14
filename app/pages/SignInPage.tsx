import type { PageComponent } from "~/helpers/inertia";
import { Text } from "@mantine/core";

import SignInForm from "~/components/SignInForm";

const SignInPage: PageComponent = ({ errors }) => {
  return (
    <Card w={380} radius="md" withBorder>
      <Stack spacing="xs">
        <Stack align="center" spacing={0}>
          <Title size="h3">Sign In</Title>
          <Text size="sm" color="dimmed">
            Welcome back to{" "}
            <Text color="dark.4" weight={600} span>
              It&apos;s Kai!
            </Text>
          </Text>
        </Stack>
        <SignInForm {...{ errors }} />
      </Stack>
    </Card>
  );
};

SignInPage.layout = withCenterLayout;

export default SignInPage;
