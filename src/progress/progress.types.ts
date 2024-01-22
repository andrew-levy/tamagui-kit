import { ViewProps, processColor } from "react-native";
import { OnSized } from "../types";

export type NativeProgressProps = {
  value: number;
  max?: number;
  accent?: ReturnType<typeof processColor>;
  onSized?: OnSized;
} & ViewProps;

export type ProgressProps = {
  value: number;
  accent?: string;
  max?: number;
} & ViewProps;
