import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { processColor } from "react-native";
import { useSizedToFit } from "../use-sized-to-fit";
import { NativeSelectProps, SelectProps } from "./select.types";

const NativeView: React.ComponentType<NativeSelectProps> =
  requireNativeViewManager("Select");

export default function PickerView(props: SelectProps) {
  const { size, onSized } = useSizedToFit();
  return (
    <NativeView
      {...props}
      accent={processColor(props.accent)}
      style={{
        ...size,
        ...(props.style as any),
      }}
      onSized={onSized}
      onValueChange={(e) => {
        props.onValueChange?.(e.nativeEvent.value);
      }}
    />
  );
}
