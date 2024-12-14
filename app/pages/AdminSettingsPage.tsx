import { Text } from "@mantine/core";

import AdminICloudConnectionForm from "~/components/AdminICloudConnectionForm";
import AdminLocationAccessGrants from "~/components/AdminLocationAccessGrants";
import AdminLocationLogsBackfillAddressesButtons from "~/components/AdminLocationLogsBackfillAddressesButtons";
import AdminLocationLogsSyncButton from "~/components/AdminLocationLogsSyncButton";
import AdminJournalEntriesSyncButton from "~/components/AdminNotionJournalEntriesSyncButton";
import AdminOAuthConnectionForm from "~/components/AdminOAuthConnectionForm";
import AdminPushSubscriptionForm from "~/components/AdminPushSubscriptionForm";
import AdminSidebar from "~/components/AdminSidebar";
import AppLayout from "~/components/AppLayout";
import { type ICloudConnection, type OAuthConnection } from "~/types";

export interface AdminSettingsPageProps extends SharedPageProps {
  icloudConnection: ICloudConnection;
  googleConnection: OAuthConnection;
  spotifyConnection: OAuthConnection;
  numLogsWithoutAddresses: number;
  newLocationAccessGrantId: string | null;
}

const AdminSettingsPage: PageComponent<AdminSettingsPageProps> = ({
  googleConnection,
  icloudConnection,
  newLocationAccessGrantId,
  numLogsWithoutAddresses,
  spotifyConnection,
}) => (
  <Stack>
    <Title order={1} size="h2" ta="center">
      Settings
    </Title>
    <Card withBorder>
      <Stack gap="xs">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4">
            Data controls
          </Title>
          <Text size="sm" c="dimmed" lh={1.3}>
            Sync data from your services
          </Text>
        </Stack>
        <Stack gap={6}>
          <AdminLocationLogsSyncButton
            disabled={icloudConnection.status !== "connected"}
          />
          {numLogsWithoutAddresses > 0 && (
            <AdminLocationLogsBackfillAddressesButtons
              disabled={icloudConnection.status !== "connected"}
              {...{ numLogsWithoutAddresses }}
            />
          )}
          <AdminJournalEntriesSyncButton />
        </Stack>
      </Stack>
    </Card>
    <Card withBorder>
      <Stack gap="sm">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4" lh="xs">
            Notifications
          </Title>
          <Text size="sm" c="dimmed" lh="xs">
            Update your push notification settings
          </Text>
        </Stack>
        <AdminPushSubscriptionForm />
      </Stack>
    </Card>
    <Card withBorder>
      <Stack gap="xs">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4">
            Location access grants
          </Title>
          <Text size="sm" c="dimmed" lh={1.3}>
            Grant access to your precise location
          </Text>
        </Stack>
        <AdminLocationAccessGrants
          newGrantId={newLocationAccessGrantId ?? undefined}
        />
      </Stack>
    </Card>
    <Card withBorder>
      <Stack gap="sm">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4">
            iCloud
          </Title>
          <Text size="sm" c="dimmed" lh={1.3}>
            Enables location services
          </Text>
        </Stack>
        <AdminICloudConnectionForm
          connection={icloudConnection}
          onConnected={() => {
            router.reload({ only: ["icloudConnection"] });
          }}
          onDisconnected={() => {
            router.reload({ only: ["icloudConnection"] });
          }}
        />
      </Stack>
    </Card>
    <Card withBorder>
      <Stack gap="sm">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4">
            Google
          </Title>
          <Text size="sm" c="dimmed" lh={1.3}>
            Enables availability services
          </Text>
        </Stack>
        <AdminOAuthConnectionForm
          connection={googleConnection}
          onDisconnected={() => {
            router.reload({ only: ["googleConnection"] });
          }}
        />
      </Stack>
    </Card>
    <Card withBorder>
      <Stack gap="sm">
        <Stack align="center" gap={0}>
          <Title order={2} size="h4">
            Spotify
          </Title>
          <Text size="sm" c="dimmed" lh={1.3}>
            Enables currently-playing & lyrics services
          </Text>
        </Stack>
        <AdminOAuthConnectionForm
          connection={spotifyConnection}
          onDisconnected={() => {
            router.reload({ only: ["spotifyConnection"] });
          }}
        />
      </Stack>
    </Card>
  </Stack>
);

AdminSettingsPage.layout = page => (
  <AppLayout
    title={["Admin", "Settings"]}
    breadcrumbs={[
      { title: "Home", href: routes.home.show.path() },
      { title: "Admin", href: routes.admin.show.path() },
      { title: "Settings", href: routes.adminSettings.show.path() },
    ]}
    withContainer
    containerSize="xs"
    withGutter
    sidebar={<AdminSidebar />}
  >
    {page}
  </AppLayout>
);

export default AdminSettingsPage;