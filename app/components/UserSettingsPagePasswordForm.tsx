import type { FC } from "react";
import { PasswordInput } from "@mantine/core";

export type UserSettingsPagePasswordFormValues = {
  readonly password: string;
  readonly passwordConfirmation: string;
  readonly currentPassword: string;
};

export type UserSettingsPagePasswordFormProps = {};

const UserSettingsPagePasswordForm: FC<
  UserSettingsPagePasswordFormProps
> = () => {
  const router = useRouter();
  const initialValues: UserSettingsPagePasswordFormValues = useMemo(
    () => ({
      password: "",
      passwordConfirmation: "",
      currentPassword: "",
    }),
    [],
  );
  const { getInputProps, onSubmit, reset, setErrors } =
    useForm<UserSettingsPagePasswordFormValues>({ initialValues });
  return (
    <form
      onSubmit={onSubmit(
        ({ password, passwordConfirmation, currentPassword }) => {
          const data = {
            user: {
              password,
              password_confirmation: passwordConfirmation,
              current_password: currentPassword,
            },
          };
          router.put("/account", data, {
            errorBag: UserSettingsPagePasswordForm.name,
            preserveScroll: true,
            onSuccess: () => {
              reset();
              showNotice({ message: "Password changed successfully." });
            },
            onError: errors => {
              reset();
              setErrors(errors);
              showAlert({ message: "Failed to change password." });
            },
          });
        },
      )}
    >
      <Stack spacing="xs">
        <PasswordInput
          label="New Password"
          placeholder="applesauce"
          required
          {...getInputProps("password")}
        />
        <PasswordInput
          label="New Password (confirm)"
          placeholder="applesauce"
          required
          {...getInputProps("passwordConfirmation")}
        />
        <PasswordInput
          label="Current Password"
          placeholder="potato-123"
          required
          {...getInputProps("currentPassword")}
        />
        <Button type="submit">Change Password</Button>
      </Stack>
    </form>
  );
};

export default UserSettingsPagePasswordForm;