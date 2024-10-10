import { type NotificationProps } from "@mantine/core";

import ExclamationTriangleIcon from "~icons/heroicons/exclamation-triangle-20-solid";
import InformationCircleIcon from "~icons/heroicons/information-circle-20-solid";

const AppFlashNotificationProps: Record<string, Partial<NotificationProps>> = {
  notice: {
    color: "var(--mantine-color-primary-filled)",
    icon: <InformationCircleIcon />,
  },
  alert: {
    color: "var(--mantine-color-red-filled)",
    icon: <ExclamationTriangleIcon />,
  },
};

const AppFlash: FC = () => {
  // Clear flash messages when going back in history
  useWindowEvent("popstate", ({ state }) => {
    if (state instanceof Object && "props" in state) {
      // eslint-disable-next-line @typescript-eslint/no-unsafe-assignment
      const { props } = state;
      invariant(
        props instanceof Object,
        "Expected `state.props` to be an Object",
      );
      if ("flash" in props) {
        // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
        props.flash = {};
      }
    }
  });

  // Show flash messages
  const { flash } = usePageProps();
  useEffect(() => {
    if (flash) {
      Object.entries(flash).forEach(([type, message]) => {
        const props = AppFlashNotificationProps[type];
        showNotification({ message, ...props });
      });
    }
  }, [flash]);

  return null;
};

export default AppFlash;
