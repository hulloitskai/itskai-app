import type { PageComponent, PageProps } from "~/helpers/inertia";
import { Text } from "@mantine/core";

import type { HomePageQuery } from "~/helpers/graphql";

import HomePageJournalEntry from "~/components/HomePageJournalEntry";

export type HomePageProps = PageProps<HomePageQuery>;

const HomePage: PageComponent<HomePageProps> = ({ data: { entry } }) => (
  <Stack spacing="xs">
    <Space h="xs" />
    <Center h={240}>
      <Stack spacing="xs" align="center">
        <Title color="white">hi, it&apos;s kai</Title>
        <Text color="gray.6" align="center" maw={400}>
          welcome to my little corner of the internet :)
          <br />
          please enjoy your stay. if you&apos;re having a good time, let&apos;s{" "}
          <Anchor
            href="http://cal.com/itskai"
            target="_blank"
            rel="noopener noreferrer nofollow"
            weight={600}
          >
            do something together
          </Anchor>
          !
        </Text>
      </Stack>
    </Center>
    <Stack align="center" spacing="xs">
      <Title order={2} size="h3">
        sometimes, kai writes.
      </Title>
      <HomePageJournalEntry initialEntry={entry} w="100%" />
    </Stack>
    <Space h="xs" />
  </Stack>
);

HomePage.layout = buildLayout<HomePageProps>((page, { data: { viewer } }) => (
  <AppLayout withContainer {...{ viewer }}>
    {page}
  </AppLayout>
));

export default HomePage;
