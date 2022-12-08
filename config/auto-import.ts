import type { ImportsMap, PresetName } from "unplugin-auto-import/types";

export const imports: Array<ImportsMap | PresetName> = [
  "react",
  {
    "@apollo/client": [
      "useApolloClient",
      "useQuery",
      "useLazyQuery",
      "useSubscription",
      "useMutation",
    ],
    "@inertiajs/inertia-react": ["Link", "usePage"],
    "@mantine/core": [
      "packSx",
      "useMantineTheme",
      "useMantineColorScheme",
      "Alert",
      "Anchor",
      "Badge",
      "Box",
      "Button",
      "Card",
      "Center",
      "Chip",
      "Container",
      "Divider",
      "Group",
      "List",
      "LoadingOverlay",
      "Menu",
      "MediaQuery",
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
      "useElementSize",
      "useMediaQuery",
      "useViewportSize",
    ],
    "@mantine/notifications": ["showNotification"],
    "@mantine/modals": ["openModal", "closeAllModals"],
    "lodash-es": [
      "first",
      "isEmpty",
      "isEqual",
      "keyBy",
      "mapKeys",
      "mapValues",
      "omit",
      "pick",
      "take",
      "uniqBy",
    ],
    luxon: ["DateTime", "Duration"],
    "react-use": ["useEvent"],
    "tiny-invariant": [["default", "invariant"]],
    "~/components": ["Head", "AppLayout", "PageHeader"],
    "~/helpers": [
      "resolve",
      "getMeta",
      "requireMeta",
      "formatError",
      "formatApolloError",
      "useApolloErrorCallback",
      "useDateTime",
      "useMounted",
      "layoutWithData",
      "usePageErrors",
      "usePageProps",
      "usePageData",
      "useRouter",
      "formErrors",
      "showNotice",
      "showAlert",
    ],
  },
];
