import type { FC } from "react";
import { PasswordInput } from "@mantine/core";

export type AccountPasswordFormValues = {
  readonly password: string;
  readonly passwordConfirmation: string;
  readonly currentPassword: string;
};

export type AccountPasswordFormProps = {};

const AccountPasswordForm: FC<AccountPasswordFormProps> = () => {
  const router = useRouter();
  const { getInputProps, onSubmit, reset, setErrors } =
    useForm<AccountPasswordFormValues>({
      initialValues: {
        password: "",
        passwordConfirmation: "",
        currentPassword: "",
      },
    });
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
            errorBag: "AccountPasswordForm",
            onError: errors => {
              showAlert({ message: "Failed to change password." });
              setErrors(errors);
            },
            onSuccess: () => {
              showNotice({
                message: "You've updated your account password.",
              });
            },
            onFinish: () => {
              reset();
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

export default AccountPasswordForm;
