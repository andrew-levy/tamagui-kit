import SwiftUI

struct SelectView: View {
  @ObservedObject var props: SelectProps
  
  var body: some View {
    if #available(iOS 14.0, *) {
      Picker("", selection: $props.value) {
        ForEach(Array(props.options.enumerated()), id: \.element) { (index, option) in
          Text("\(option)").tag(index)
        }
      }
      .conditionalTint(color: props.accentColor)
      .pickerType(type: props.type)
      .sizedToFit(onSized: props.onSized)
      .onChange(of: props.value) { newValue in
        props.onValueChange([
          "value": newValue
        ])
      }
    }
  }
}
