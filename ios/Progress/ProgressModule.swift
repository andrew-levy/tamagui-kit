import ExpoModulesCore

public class ProgressModule: Module {
  public func definition() -> ModuleDefinition {
    Name("Progress")
    View(ProgressExpoView.self) {
      Events("onSized")
      Prop("value") { (view: ProgressExpoView, prop: Double) in
        view.props.value = prop
      }
      Prop("max") { (view: ProgressExpoView, prop: Double?) in
        view.props.max = prop ?? 1
      }
      Prop("accent") { (view: ProgressExpoView, prop: UIColor?) in
        view.props.accent = prop
      }
    }
  }
}
