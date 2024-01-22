import { ViewProps, processColor } from "react-native";
import { OnSized, OnValueChange } from "../types";

export type NativeSwitchProps = {
  value: boolean;
  label?: string;
  accent?: ReturnType<typeof processColor>;
  onSized?: OnSized;
  onValueChange: OnValueChange<boolean>;
} & ViewProps;

export type SwitchProps = {
  value: boolean;
  label?: string;
  accent?: string;
  onValueChange: (newValue: boolean) => void;
} & ViewProps;
