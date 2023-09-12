import type { FC, ReactNode } from "react";

import { useHover } from "@mantine/hooks";
import type { TooltipProps } from "@mantine/core";

import { CurrentlyPlayingLyricsTooltipQueryDocument } from "~/helpers/graphql";
import type { Maybe } from "~/helpers/graphql";
import type { CurrentlyPlayingLyricsTooltipLyricLineFragment } from "~/helpers/graphql";

import {
  useInterpolatedProgressMilliseconds,
  useProgressLyricsIndexMapping,
} from "~/helpers/currentlyPlaying";

export type CurrentlyPlayingLyricsTooltipProps = Pick<
  TooltipProps,
  "disabled"
> & {
  readonly durationMilliseconds: number;
  readonly progressMilliseconds: number | undefined;
  readonly children: (
    currentLyricLine:
      | Maybe<CurrentlyPlayingLyricsTooltipLyricLineFragment>
      | undefined,
  ) => ReactNode;
};

const CurrentlyPlayingLyricsTooltip: FC<CurrentlyPlayingLyricsTooltipProps> = ({
  durationMilliseconds,
  progressMilliseconds = 0,
  disabled,
  children,
  ...otherProps
}) => {
  const theme = useMantineTheme();
  const interpolationMilliseconds = 250;
  const transitionDuration = 200;
  const { hovered, ref } = useHover();

  // == Progress
  const interpolatedProgressMilliseconds = useInterpolatedProgressMilliseconds({
    progressMilliseconds,
    interpolationMilliseconds,
  });

  // == Query
  const { data } = useQuery(CurrentlyPlayingLyricsTooltipQueryDocument, {
    fetchPolicy: "no-cache",
    variables: {},
    onError: error => {
      console.error(
        "Failed to load lyrics for currently playing track",
        formatJSON({ error }),
      );
    },
  });
  const { lyrics } = data?.currentlyPlaying?.track ?? {};
  const progressLyricsIndexMapping = useProgressLyricsIndexMapping({
    lyrics,
    durationMilliseconds,
    interpolationMilliseconds,
  });

  // == Current Lyric & Words
  const currentLyric = useMemo(() => {
    if (lyrics) {
      const currentLyricIndex =
        progressLyricsIndexMapping[interpolatedProgressMilliseconds];
      if (currentLyricIndex) {
        return lyrics[currentLyricIndex];
      }
      return null;
    }
  }, [lyrics, progressLyricsIndexMapping, interpolatedProgressMilliseconds]);
  const [currentWords, setCurrentWords] = useState("");
  useEffect(() => {
    if (currentLyric?.words) {
      const { words, isExplicit } = currentLyric;
      if (!isExplicit || hovered) {
        setCurrentWords(words);
      } else {
        setTimeout(() => {
          setCurrentWords(words);
        }, transitionDuration + 50);
      }
    }
  }, [currentLyric]);

  // == Helpers
  const hasWords = !!currentLyric?.words;
  const currentlyExplicit = currentLyric?.isExplicit;

  // == Markup
  const renderedChildren = useMemo<ReactNode>(
    () => children(currentLyric),
    [children, currentLyric],
  );
  return (
    <Tooltip
      label={currentWords}
      multiline
      withArrow
      color={theme.primaryColor}
      transitionProps={{ duration: transitionDuration }}
      disabled={disabled ?? !hasWords}
      maw={350}
      fz="xs"
      styles={{
        tooltip: {
          textTransform: "none",
          lineHeight: 1.3,
        },
      }}
      {...(currentlyExplicit === false && { opened: !disabled && hasWords })}
      {...{ ref }}
      {...otherProps}
    >
      {renderedChildren}
    </Tooltip>
  );
};

export default CurrentlyPlayingLyricsTooltip;
