import SwiftUI

struct SwitchView: View {
  @ObservedObject var props: SwitchProps
  var body: some View {
    if #available(iOS 14.0, *) {
      Toggle(props.labelText ?? "", isOn: $props.value)
        .conditionalTint(color: props.accentColor)
        .sizedToFit(onSized: props.onSized)
        .conditionalLabel(hasLabel: props.labelText != nil)
        .onChange(of: props.value) { newValue in
          props.onValueChange([
            "value": newValue
          ])
        }
    }
  }
}
