import ExpoModulesCore
import SwiftUI

class ColorPickerExpoView: ExpoView {
  let props: ColorPickerProps
  let onSized = EventDispatcher()
  let onValueChange = EventDispatcher()
  
  required init(appContext: AppContext? = nil) {
    props = ColorPickerProps(onSized: onSized, onValueChange: onValueChange)
    let hostingController = UIHostingController(rootView: ColorPickerView(props: props))
    super.init(appContext: appContext)
    setupHostingController(hostingController)
  }
}
