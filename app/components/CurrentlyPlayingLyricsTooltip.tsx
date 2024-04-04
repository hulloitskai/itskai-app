import type { FC, ReactNode } from "react";

import { useHover } from "@mantine/hooks";
import type { TooltipProps } from "@mantine/core";

import type { Maybe } from "~/helpers/graphql";
import type { CurrentlyPlayingLyricsTooltipLyricLineFragment } from "~/helpers/graphql";
import { CurrentlyPlayingLyricsTooltipQueryDocument } from "~/helpers/graphql";

import {
  useInterpolatedProgressMilliseconds,
  useProgressLyricsIndexMapping,
} from "~/helpers/currentlyPlaying";

import classes from "./CurrentlyPlayingLyricsTooltip.module.css";

export type CurrentlyPlayingLyricsTooltipProps = Omit<
  TooltipProps,
  "label" | "children"
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

  // == Current Lyric
  const currentLyric = useMemo(() => {
    if (lyrics) {
      const currentLyricIndex =
        progressLyricsIndexMapping[interpolatedProgressMilliseconds];
      if (typeof currentLyricIndex === "number") {
        return lyrics[currentLyricIndex];
      }
      return null;
    }
  }, [lyrics, progressLyricsIndexMapping, interpolatedProgressMilliseconds]);

  const hasWords = !!currentLyric?.words;
  const label = useMemo(
    () => (hovered ? "Click to jam with me :)" : currentLyric?.words),
    [currentLyric, hovered],
  );
  const prevLabel = usePrevious(label);
  return (
    <Tooltip
      label={label || prevLabel}
      withArrow
      multiline
      color="primary"
      transitionProps={{ duration: transitionDuration }}
      disabled={disabled ?? (!hasWords && !hovered)}
      opened={!disabled && (hasWords || hovered)}
      maw={350}
      fz="xs"
      classNames={{ tooltip: classes.tooltip }}
      {...{ ref }}
      {...otherProps}
    >
      {children(currentLyric)}
    </Tooltip>
  );
};

export default CurrentlyPlayingLyricsTooltip;
