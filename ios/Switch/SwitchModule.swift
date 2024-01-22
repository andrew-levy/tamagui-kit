import ExpoModulesCore

public class SwitchModule: Module {
  public func definition() -> ModuleDefinition {
    Name("Switch")
    View(SwitchExpoView.self) {
      Events("onSized")
      Events("onValueChange")
      Prop("value") { (view: SwitchExpoView, prop: Bool) in
        view.props.value = prop
      }
      Prop("label") { (view: SwitchExpoView, prop: String?) in
        view.props.labelText = prop
      }
      Prop("accent") { (view: SwitchExpoView, prop: UIColor?) in
        view.props.accentColor = prop
      }
    }
  }
}
