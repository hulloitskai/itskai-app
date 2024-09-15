import { Head as _Head } from "@inertiajs/react";
import { type ComponentProps, type FC } from "react";

export interface HeadProps extends ComponentProps<typeof _Head> {}

const Head: FC<HeadProps> = _Head;

export default Head;
