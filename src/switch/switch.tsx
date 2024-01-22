import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { processColor } from "react-native";
import { useSizedToFit } from "../use-sized-to-fit";
import { NativeSwitchProps, SwitchProps } from "./switch.types";

const NativeView: React.ComponentType<NativeSwitchProps> =
  requireNativeViewManager("Switch");

export default function Switch(props: SwitchProps) {
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
