import { ViewProps, processColor } from "react-native";
import { OnSized, OnValueChange } from "../types";

export type NativeColorPickerProps = {
  value: ReturnType<typeof processColor>;
  label?: string;
  onSized?: OnSized;
  onValueChange: OnValueChange<UIColor>;
} & ViewProps;

export type ColorPickerProps = {
  value: string;
  label?: string;
  onValueChange: (newValue: UIColor) => void;
} & ViewProps;

export type UIColor = {
  red: number;
  green: number;
  blue: number;
  alpha: number;
};
