import type { ComponentPropsWithoutRef, FC } from "react";
import type { LocationAccessGrant } from "~/types";

import type { BoxProps } from "@mantine/core";
import { Code, CopyButton, Text } from "@mantine/core";

import type { LocationAccessGrantDeleteButtonProps } from "./LocationAccessGrantDeleteButton";
import LocationAccessGrantDeleteButton from "./LocationAccessGrantDeleteButton";

import classes from "./LocationAccessGrantCard.module.css";

export interface LocationAccessGrantCardProps
  extends BoxProps,
    Omit<ComponentPropsWithoutRef<"div">, "style" | "children">,
    Pick<LocationAccessGrantDeleteButtonProps, "onDeleted"> {
  grant: LocationAccessGrant;
}

const LocationAccessGrantCard: FC<LocationAccessGrantCardProps> = ({
  grant: { id: grantId, recipient, password, createdAt, expiresAt },
  onDeleted,
  ...otherProps
}) => (
  <Card
    withBorder
    padding="sm"
    style={{
      borderColor: "var(--mantine-color-primary-filled)",
    }}
    {...otherProps}
  >
    <Stack gap="xs">
      <Box style={{ flexGrow: 1 }}>
        <Text fw={600} lh={1.4}>
          {recipient}
        </Text>
        <Text size="sm" c="dimmed" lh={1.4}>
          Created on{" "}
          <Time inherit format={DateTime.DATETIME_MED} c="gray.5" fw={500}>
            {createdAt}
          </Time>
        </Text>
        <Text size="sm" c="dimmed" lh={1.4}>
          Expires{" "}
          <TimeAgo inherit c="gray.5" fw={500}>
            {expiresAt}
          </TimeAgo>
        </Text>
        <Text size="sm" c="dimmed" lh={1.4}>
          Password is{" "}
          <CopyButton value={password}>
            {({ copy, copied }) => (
              <Tooltip
                label={copied ? "Copied!" : "Click to copy"}
                color="primary"
                withArrow
                {...(copied && { opened: true })}
              >
                <Code
                  color="primary"
                  onClick={copy}
                  ml={2}
                  className={classes.copyCode}
                  style={theme => ({
                    "--lagc-copy-code-bg": theme.variantColorResolver({
                      color: "primary",
                      variant: "filled",
                      theme,
                    }).hover,
                  })}
                >
                  {password}
                </Code>
              </Tooltip>
            )}
          </CopyButton>
        </Text>
      </Box>
      <LocationAccessGrantDeleteButton {...{ grantId, onDeleted }} />
    </Stack>
  </Card>
);

export default LocationAccessGrantCard;
