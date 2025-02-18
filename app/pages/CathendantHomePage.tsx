import { Text } from "@mantine/core";
import { useGlobalAudioPlayer } from "react-use-audio-player";

import PlayIcon from "~icons/heroicons/play-20-solid";
import StopIcon from "~icons/heroicons/stop-20-solid";

import AppMeta from "~/components/AppMeta";
import PageContainer from "~/components/PageContainer";
import PageLayout from "~/components/PageLayout";
import { type CathendantMemo } from "~/types";

export interface CathendantHomePageProps extends SharedPageProps {
  memos: CathendantMemo[];
}

const CathendantHomePage: PageComponent<CathendantHomePageProps> = ({
  memos,
}) => {
  const player = useGlobalAudioPlayer();
  const [playingMemoId, setPlayingMemoId] = useState<string | null>(null);
  return (
    <Stack>
      <Box>
        <Title>Voices from your friends :)</Title>
        <Anchor component={Link} href={routes.cathendantHome.contribute.path()}>
          Wanna add another voice?
        </Anchor>
      </Box>
      {memos.map(memo => (
        <Card key={memo.id} withBorder>
          <Stack gap="xs">
            <Text>
              From:{" "}
              <Text span inherit fw={600}>
                {memo.from}
              </Text>
            </Text>
            <Button
              size="lg"
              variant={playingMemoId === memo.id ? "outline" : "filled"}
              leftSection={
                playingMemoId === memo.id ? <StopIcon /> : <PlayIcon />
              }
              onClick={() => {
                if (playingMemoId !== memo.id) {
                  player.load(memo.recording_url, {
                    autoplay: true,
                    html5: true,
                    onstop: () => {
                      setPlayingMemoId(null);
                    },
                    onend: () => {
                      setPlayingMemoId(null);
                    },
                  });
                  setPlayingMemoId(memo.id);
                } else {
                  player.stop();
                }
              }}
            >
              {playingMemoId === memo.id ? "Stop playback" : "Play message"}
            </Button>
          </Stack>
        </Card>
      ))}
    </Stack>
  );
};

CathendantHomePage.layout = page => (
  <>
    <AppMeta siteName="Cathendant" />
    <PageLayout>
      <PageContainer size="xs" withGutter>
        {page}
      </PageContainer>
    </PageLayout>
  </>
);

export default CathendantHomePage;
