import type { FC, PropsWithChildren, ReactElement } from "react";
import { AppShell } from "@mantine/core";

import AppHeader from "./AppHeader";
import AppProgress from "./AppProgress";

export type AppLayoutProps = PropsWithChildren;

const AppLayout: FC<AppLayoutProps> = ({ children }) => (
  <>
    <AppShell header={<AppHeader />}>
      <Container size="sm" p={0} mb="xl">
        {children}
      </Container>
    </AppShell>
    <AppProgress />
  </>
);

export default AppLayout;

export const withAppLayout = (page: ReactElement): ReactElement => {
  return <AppLayout>{page}</AppLayout>;
};