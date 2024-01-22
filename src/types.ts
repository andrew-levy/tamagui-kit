import { NativeSyntheticEvent } from "react-native";

export type OnValueChange<T> = (
  e: NativeSyntheticEvent<{
    value: T;
  }>
) => void;

export type OnSized = (
  e: NativeSyntheticEvent<{
    value: {
      width: number;
      height: number;
    };
  }>
) => void;
