import { ViewProps, processColor } from "react-native";
import { OnSized, OnValueChange } from "../types";

export type NativeSelectProps = {
  value: number;
  options: any[];
  type?: "menu" | "segmented" | "wheel";
  accent?: ReturnType<typeof processColor>;
  onSized?: OnSized;
  onValueChange: OnValueChange<number>;
} & ViewProps;

export type SelectProps = {
  value: number;
  options: any[];
  accent?: string;
  type?: "menu" | "segmented" | "wheel";
  onValueChange: (newValue: number) => void;
} & ViewProps;
