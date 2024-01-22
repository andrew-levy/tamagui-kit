import { useState } from "react";
import { DimensionValue } from "react-native";
import { OnSized } from "./types";

export function useSizedToFit() {
  const [size, setSize] = useState({
    width: "100%" as DimensionValue,
    height: "auto" as DimensionValue,
  });
  return {
    size,
    onSized: (e: Parameters<OnSized>[0]) => {
      const { width, height } = e.nativeEvent.value;
      setSize({ width, height });
    },
  };
}
