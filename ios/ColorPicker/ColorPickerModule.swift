import ExpoModulesCore
import SwiftUI

public class ColorPickerModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ColorPicker")
    View(ColorPickerExpoView.self) {
      Events("onSized")
      Events("onValueChange")
      Prop("label") { (view: ColorPickerExpoView, prop: String?) in
        view.props.label = prop ?? ""
      }
      Prop("value") { (view: ColorPickerExpoView, prop: UIColor) in
        view.props.value = prop
      }
    }
  }
}
