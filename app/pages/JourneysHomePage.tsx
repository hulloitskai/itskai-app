import type { PageComponent, PagePropsWithData } from "~/helpers/inertia";
import { Text } from "@mantine/core";
import { useMediaRecorder } from "~/helpers/mediaRecorder";
import MicIcon from "~icons/heroicons/microphone-20-solid";

import type { JourneysHomePageQuery } from "~/helpers/graphql";

import JourneysAppLayout from "~/components/JourneysAppLayout";

export type JourneysHomePageProps = PagePropsWithData<JourneysHomePageQuery>;

const JourneysHomePage: PageComponent<JourneysHomePageProps> = () => {
  const router = useRouter();

  // == Audio Transcription
  const [isTranscribing, setIsTranscribing] = useState(false);
  const { startRecording, stopRecording, status } = useMediaRecorder({
    mediaRecorderOptions: {
      mimeType: "audio/wav",
    },
    onStop: (blobUrl, blob) => {
      const formData = new FormData();
      formData.set("goal_recording", blob);
      router.post("/sessions", formData, {
        onStart: () => {
          setIsTranscribing(true);
        },
        onFinish: () => {
          setIsTranscribing(false);
        },
      });
    },
  });
  const isRecording = status === "recording";

  return (
    <Stack align="center" my="xl">
      <Title order={3}>watchya gonna do for the next hour?</Title>
      <Button
        leftSection={<MicIcon />}
        onClick={() => {
          if (!isRecording) {
            startRecording();
          } else {
            stopRecording();
          }
        }}
        miw={180}
      >
        {isTranscribing
          ? "Transcribing..."
          : isRecording
          ? "Recording... (click again to end)"
          : "Record your goal"}
      </Button>
      <Container size="xs" w="100%">
        <Stack align="center" gap={0}>
          <Text size="sm" c="dimmed" style={{ textAlign: "center" }}>
            we&apos;ll start a 1-hour timer for you to do ur thing.
            <br />
            send this link to other ppl so they can join your session, to keep u
            motivated & held accountable.
          </Text>
        </Stack>
      </Container>
    </Stack>
  );
};

JourneysHomePage.layout = buildLayout<JourneysHomePageProps>(
  (page, { data: { viewer } }) => (
    <JourneysAppLayout padding={0} {...{ viewer }}>
      {page}
    </JourneysAppLayout>
  ),
);

export default JourneysHomePage;
