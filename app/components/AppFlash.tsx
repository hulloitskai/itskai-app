import type { FC } from "react";
import type { NotificationProps } from "@mantine/notifications";

import InformationCircleIcon from "~icons/heroicons/information-circle-20-solid";
import ExclamationTriangleIcon from "~icons/heroicons/exclamation-triangle-20-solid";

const AppFlashNotificationProps: Record<string, Partial<NotificationProps>> = {
  notice: {
    color: "brand",
    icon: <InformationCircleIcon />,
  },
  alert: {
    color: "red",
    icon: <ExclamationTriangleIcon />,
  },
};

const AppFlash: FC = () => {
  const { flash } = usePageProps();
  useEffect(() => {
    if (flash) {
      Object.entries(flash).forEach(([type, message]) => {
        const props = AppFlashNotificationProps[type];
        showNotification({ message, ...props });
      });
    }
  }, [flash]);
  useWindowEvent("popstate", ({ state }) => {
    if (typeof state === "object" && "props" in state) {
      const { props } = state;
      invariant(
        typeof props === "object",
        "Expected `state.props` to be an object",
      );
      if (props && "flash" in props) {
        delete props.flash;
      }
    }
  });
  return null;
};

export default AppFlash;
