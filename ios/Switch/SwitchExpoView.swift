import ExpoModulesCore
import SwiftUI

class SwitchExpoView: ExpoView {
  let props: SwitchProps
  let onSized = EventDispatcher()
  let onValueChange = EventDispatcher()
  
  required init(appContext: AppContext? = nil) {
    props = SwitchProps(onSized: onSized, onValueChange: onValueChange)
    let hostingController = UIHostingController(rootView: SwitchView(props: props))
    super.init(appContext: appContext)
    setupHostingController(hostingController)
  }
}
