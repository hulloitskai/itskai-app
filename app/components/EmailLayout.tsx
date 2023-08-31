import type { FC, PropsWithChildren } from "react";
import type { CSSObject } from "@mantine/core";

import {
  Body,
  Container,
  Heading,
  Img,
  Preview,
  Section,
  Text,
} from "@react-email/components";
import type { PreviewProps } from "@react-email/components";

export type EmailLayoutProps = PropsWithChildren<{
  readonly header?: string;
  readonly preview?: PreviewProps["children"];
}>;

const EmailLayout: FC<EmailLayoutProps> = ({ header, preview, children }) => (
  <>
    {!!preview && (
      <Preview style={{ textTransform: "lowercase" }}>{preview}</Preview>
    )}
    <Body style={{ textTransform: "lowercase" }}>
      <Box component={Container} mx="auto" px={12} py={16}>
        {!!header && (
          <Box
            component={Heading}
            my={24}
            sx={({ headings }) => headings.sizes.h3 as CSSObject}
          >
            {header}
          </Box>
        )}
        <Box
          component={Section}
          sx={({ colors }) => ({
            '[data-id="react-email-text"]': {
              color: colors.gray[8],
            },
          })}
        >
          {children}
        </Box>
        <Box component={Section} mt={40}>
          <Img src="/logo.png" width="32" height="32" />
          <Box
            component={Text}
            sx={({ fn }) => ({ color: fn.dimmed() })}
            style={{ margin: `${rem(4)} 0` }}
          >
            Sent by{" "}
            <Box
              component={Link}
              href="/"
              target="_blank"
              sx={({ colors }) => ({ color: colors.brand[5], fontWeight: 500 })}
            >
              It&apos;s Kai
            </Box>
            . This email loves you.
          </Box>
        </Box>
      </Box>
    </Body>
  </>
);

export default EmailLayout;
