import AvatarInput from "./AvatarInput";

export interface SettingsPageProfileFormProps
  extends BoxProps,
    Omit<ComponentPropsWithoutRef<"form">, "style" | "children" | "onSubmit"> {}

const SettingsPageProfileForm: FC<SettingsPageProfileFormProps> = ({
  ...otherProps
}) => {
  const authenticatedUser = useAuthenticatedUser();

  // == Form
  const initialValues = useMemo(() => {
    const { name, avatar } = authenticatedUser;
    return {
      name,
      avatar: avatar ? { signedId: avatar.signedId } : null,
    };
  }, [authenticatedUser]);
  const form = useInertiaForm({
    action: routes.usersRegistrations.update,
    method: "put",
    descriptor: "update profile",
    // mode: "uncontrolled",
    initialValues,
    transformValues: ({ avatar, ...attributes }) => ({
      user: {
        ...deepUnderscoreKeys(attributes),
        avatar: avatar ? avatar.signedId : "",
      },
    }),
  });
  const { getInputProps, submit, processing, setInitialValues, reset } = form;
  useEffect(() => {
    setInitialValues(initialValues);
    reset();
  }, [initialValues]); // eslint-disable-line react-hooks/exhaustive-deps
  const filled = useFormFilled(form, "name", "avatar");
  const dirty = useFormDirty(form, "name", "avatar");

  return (
    <Box component="form" onSubmit={submit} {...otherProps}>
      <Stack gap="xs">
        <TextInput
          {...getInputProps("name")}
          label="Name"
          placeholder="A Friend"
          required
        />
        <AvatarInput {...getInputProps("avatar")} label="Avatar" />
        <Button type="submit" disabled={!dirty || !filled} loading={processing}>
          Save
        </Button>
      </Stack>
    </Box>
  );
};

export default SettingsPageProfileForm;
