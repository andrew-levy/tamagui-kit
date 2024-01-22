import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { processColor } from "react-native";
import { useSizedToFit } from "../use-sized-to-fit";
import { ColorPickerProps, NativeColorPickerProps } from "./color-picker.types";

const NativeView: React.ComponentType<NativeColorPickerProps> =
  requireNativeViewManager("ColorPicker");

export default function ColorPicker(props: ColorPickerProps) {
  const { size, onSized } = useSizedToFit();
  return (
    <NativeView
      {...props}
      value={processColor(props.value)}
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
