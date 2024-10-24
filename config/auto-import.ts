import { type InlinePreset } from "unimport";
import { type ImportsMap, type PresetName } from "unplugin-auto-import/types";

export const imports: (ImportsMap | PresetName | InlinePreset)[] = [
  // == Exports
  {
    "~/components": ["AnchorContainer", "EmptyCard", "Head", "Time", "TimeAgo"],
    "~/components/icons": [
      "AddIcon",
      "RemoveIcon",
      "AlertIcon",
      "SuccessIcon",
      "CreateIcon",
      "DeleteIcon",
      "EditIcon",
      "OpenExternalIcon",
      "SaveIcon",
      "SearchIcon",
      "SettingsIcon",
      "UserIcon",
      "AuthenticateIcon",
      "DeactivateIcon",
      "ClipboardIcon",
      "CancelIcon",
      "SendIcon",
    ],
    "~/helpers/actioncable": ["useCable"],
    "~/helpers/actioncable/subscription": ["useSubscription"],
    "~/helpers/authentication": ["useCurrentUser", "useAuthenticatedUser"],
    "~/helpers/inertia/page": ["usePage", "usePageProps"],
    "~/helpers/inertia/form": ["useInertiaForm"],
    "~/helpers/json": ["formatJSON"],
    "~/helpers/meta": ["getMeta", "requireMeta"],
    "~/helpers/notifications": [
      "showNotice",
      "showAlert",
      "showSuccessNotice",
      "showChangesSavedNotice",
    ],
    "~/helpers/routes": [["default", "routes"]],
    "~/helpers/fetch/swr": ["useFetchSWR"],
    "~/helpers/fetch/form": ["useFetchForm"],
    "~/helpers/form": ["useFieldsFilled"],
    "~/helpers/utils": ["resolve", "isTruthy"],
    "@fullstory/browser": ["FullStory", ["isInitialized", "isFsInitialized"]],
    "@inertiajs/react": ["Link", "router"],
    "@mantine/core": [
      "rem",
      "useMantineTheme",
      "useMantineColorScheme",
      "getThemeColor",
      "parseThemeColor",
      "Alert",
      "Anchor",
      "Badge",
      "Box",
      "Button",
      "Card",
      "Center",
      "Checkbox",
      "Chip",
      "Container",
      "Divider",
      "Flex",
      "Group",
      "List",
      "LoadingOverlay",
      "Menu",
      "Skeleton",
      "Space",
      "Stack",
      "Text",
      "Textarea",
      "TextInput",
      "Title",
      "Tooltip",
      "Transition",
    ],
    "@mantine/form": ["useForm"],
    "@mantine/hooks": [
      "useDebouncedValue",
      "useDebouncedCallback",
      "useDidUpdate",
      "useElementSize",
      "useMediaQuery",
      "useMounted",
      "useShallowEffect",
    ],
    "@mantine/notifications": ["showNotification"],
    "@mantine/modals": ["openModal", "closeAllModals"],
    clsx: [["clsx", "cn"]],
    inflection: ["inflect", "humanize"],
    "lodash-es": [
      "first",
      "last",
      "get",
      "identity",
      "isEmpty",
      "isEqual",
      "isNil",
      "isUndefined",
      "keyBy",
      "mapKeys",
      "mapValues",
      "omit",
      "omitBy",
      "pick",
      "take",
      "uniqBy",
    ],
    "@uidotdev/usehooks": ["usePrevious"],
    luxon: ["DateTime", "Duration"],
    react: [
      "useState",
      "useCallback",
      "useMemo",
      "useEffect",
      "useRef",
      "createRef",
      "forwardRef",
    ],
    "tiny-invariant": [["default", "invariant"]],
  },

  // == Types
  {
    from: "react",
    imports: ["ComponentPropsWithoutRef", "FC", "PropsWithChildren"],
    type: true,
  },
  {
    from: "@mantine/core",
    imports: ["BoxProps"],
    type: true,
  },
  {
    from: "~/helpers/inertia",
    imports: ["PageComponent"],
    type: true,
  },
  {
    from: "~/types/SharedPageProps",
    imports: [["default", "SharedPageProps"]],
    type: true,
  },
];
