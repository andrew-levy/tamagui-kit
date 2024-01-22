import { useState } from "react";
import { Button, ScrollView, StyleSheet, Text, View } from "react-native";
import { ColorPicker, Progress, Select, Switch } from "tamagui-kit";

export default function App() {
  const [toggle, setToggle] = useState(true);
  const [picker1, setPicker1] = useState(0);
  const [picker2, setPicker2] = useState(0);
  const [picker3, setPicker3] = useState(0);
  const [progress, setProgress] = useState(0.1);
  const [accentColor, setAccentColor] = useState("hsl(206, 100%, 50.0%)");

  return (
    <ScrollView>
      <View style={styles.container}>
        <ColorPicker
          value={accentColor}
          label="Accent Color"
          style={{
            paddingHorizontal: 10,
            alignSelf: "flex-end",
          }}
          onValueChange={(v) => {
            const color = `rgba(${v.red}, ${v.green}, ${v.blue}, ${v.alpha})`;
            setAccentColor(color);
          }}
        />

        <Text style={styles.title}>Switch: {toggle.toString()}</Text>
        <Switch
          style={{ paddingVertical: 50 }}
          value={toggle}
          onValueChange={(value) => setToggle(value)}
          accent={accentColor}
        />

        <Text style={styles.title}>Menu Select: {picker1}</Text>
        <Select
          type="menu"
          value={picker1}
          options={["One", "Two", "Three"]}
          onValueChange={(value) => setPicker1(value)}
          style={{ padding: 50 }}
          accent={accentColor}
        />

        <Text style={styles.title}>Segmented Select: {picker2}</Text>
        <Select
          type="segmented"
          value={picker2}
          options={["One", "Two", "Three"]}
          onValueChange={(value) => setPicker2(value)}
          style={{ padding: 50 }}
          accent={accentColor}
        />

        <Text style={styles.title}>Wheel Select: {picker3}</Text>
        <Select
          type="wheel"
          value={picker3}
          options={["One", "Two", "Three"]}
          onValueChange={(value) => setPicker3(value)}
          style={{ padding: 50 }}
          accent={accentColor}
        />

        <Text style={styles.title}>Progress</Text>
        <Progress
          value={progress}
          max={1}
          style={{ padding: 30 }}
          accent={accentColor}
        />
        <View style={{ padding: 20 }}>
          <Button title="Load" onPress={() => setProgress(progress + 0.1)} />
        </View>
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: "center",
    justifyContent: "center",
    paddingHorizontal: 20,
    paddingVertical: 100,
  },

  title: {
    fontSize: 20,
    fontWeight: "bold",
  },
  separator: {
    marginVertical: 30,
    height: 1,
    width: "80%",
  },
});
