import ExpoModulesCore
import SwiftUI

class SelectExpoView: ExpoView {
  let props: SelectProps
  let onSized = EventDispatcher()
  let onValueChange = EventDispatcher()
  
  required init(appContext: AppContext? = nil) {
    props = SelectProps(onSized: onSized, onValueChange: onValueChange)
    let hostingController = UIHostingController(rootView: SelectView(props: props))
    super.init(appContext: appContext)
    setupHostingController(hostingController)
  }
}
