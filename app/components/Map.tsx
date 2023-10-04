import { NavigationControl, default as _Map } from "react-map-gl";
import type { MapRef } from "react-map-gl";
import type { MapProps as _MapProps } from "react-map-gl";

export type MapProps = Omit<_MapProps, "mapboxAccessToken">;

const Map = forwardRef<MapRef, MapProps>(
  (
    {
      mapStyle = "mapbox://styles/mapbox/streets-v12",
      children,
      ...otherProps
    },
    ref,
  ) => {
    const mapboxAccessToken = useMemo(() => getMeta("mapbox-access-token"), []);
    return (
      <_Map
        attributionControl={false}
        scrollZoom={false}
        {...{ ref, mapboxAccessToken, mapStyle }}
        {...otherProps}
      >
        <NavigationControl />
        {children}
      </_Map>
    );
  },
);

export default Map;
