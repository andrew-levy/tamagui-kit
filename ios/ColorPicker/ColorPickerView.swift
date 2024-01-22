import SwiftUI

struct ColorPickerView: View {
  @ObservedObject var props: ColorPickerProps
  private var colorBinding: Binding<Color> {
    Binding<Color>(
      get: { Color(self.props.value) },
      set: { newColor in
        if #available(iOS 14.0, *) {
          self.props.value = UIColor(newColor)
        }
      }
    )
  }
  
  var body: some View {
    if #available(iOS 14.0, *) {
      ColorPicker(props.label, selection: colorBinding)
        .sizedToFit(onSized: props.onSized)
        .labelsHidden()
        .onAppear {
          colorBinding.wrappedValue = Color(props.value)
        }
        .onChange(of: props.value) { newValue in
          var red: CGFloat = 0
          var green: CGFloat = 0
          var blue: CGFloat = 0
          var alpha: CGFloat = 0
          newValue.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
          props.onValueChange([
            "value": [
              "red": red * 255,
              "green": green * 255,
              "blue": blue * 255,
              "alpha": alpha
            ]
          ])
        }
    }
  }
}
