import { requireNativeViewManager } from "expo-modules-core";
import * as React from "react";

import { processColor } from "react-native";
import { useSizedToFit } from "../use-sized-to-fit";
import { NativeProgressProps, ProgressProps } from "./progress.types";

const NativeView: React.ComponentType<NativeProgressProps> =
  requireNativeViewManager("Progress");

export default function ProgressView(props: ProgressProps) {
  const { size, onSized } = useSizedToFit();
  const max = props.max ?? 1;
  return (
    <NativeView
      {...props}
      accent={processColor(props.accent)}
      max={max}
      style={{
        ...size,
        ...(props.style as any),
      }}
      onSized={onSized}
    />
  );
}
