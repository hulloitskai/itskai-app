import type { ComponentPropsWithoutRef, FC } from "react";
import type { BoxProps } from "@mantine/core";
import { PasswordInput } from "@mantine/core";
import { isNotEmpty } from "@mantine/form";

import StrongPasswordInput from "./StrongPasswordInput";

export interface SettingsPagePasswordFormProps
  extends BoxProps,
    Omit<ComponentPropsWithoutRef<"form">, "style" | "children" | "onSubmit"> {}

const SettingsPagePasswordForm: FC<SettingsPagePasswordFormProps> = ({
  ...otherProps
}) => {
  const [passwordStrength, setPasswordStrength] = useState(0.0);

  // == Form
  const { getInputProps, isDirty, isValid, watch, submit, processing } =
    useInertiaForm({
      action: routes.usersRegistrations.update,
      method: "put",
      descriptor: "change password",
      mode: "uncontrolled",
      initialValues: {
        password: "",
        passwordConfirmation: "",
        currentPassword: "",
      },
      transformValues: values => ({
        user: deepUnderscoreKeys(values),
      }),
      validate: {
        password: value => {
          if (!value) {
            return "Password is required";
          }
          if (passwordStrength < 1.0) {
            return "Password is too weak";
          }
        },
        passwordConfirmation: (value, { password }) => {
          if (!value) {
            return "Password confirmation is required";
          }
          if (value !== password) {
            return "Password confirmation does not match password";
          }
        },
        currentPassword: isNotEmpty("Current password is required"),
      },
    });

  // == Conditionally show current password field
  const [passwordFilled, setPasswordFilled] = useState(false);
  const [passwordConfirmationFilled, setPasswordConfirmationFilled] =
    useState(false);
  watch("password", () => {
    setPasswordFilled(isDirty("password") && isValid("password"));
  });
  watch("passwordConfirmation", () => {
    setPasswordConfirmationFilled(isValid("passwordConfirmation"));
  });

  return (
    <Box component="form" onSubmit={submit} {...otherProps}>
      <Stack gap="xs">
        <StrongPasswordInput
          label="New password"
          placeholder="ultra-secure-password"
          autoComplete="new-password"
          required
          onStrengthCheck={setPasswordStrength}
          {...getInputProps("password")}
        />
        <PasswordInput
          label="New password (confirm)"
          placeholder="ultra-secure-password"
          autoComplete="new-password"
          required
          minLength={8}
          {...getInputProps("passwordConfirmation")}
        />
        <Transition
          transition="fade"
          mounted={passwordFilled && passwordConfirmationFilled}
        >
          {style => (
            <PasswordInput
              {...getInputProps("currentPassword")}
              label="Current password"
              description="Please confirm your current password to make changes."
              placeholder="password"
              autoComplete="current-password"
              required
              {...{ style }}
            />
          )}
        </Transition>
        <Button type="submit" loading={processing}>
          Change password
        </Button>
      </Stack>
    </Box>
  );
};

export default SettingsPagePasswordForm;
