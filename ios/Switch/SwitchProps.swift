import SwiftUI
import ExpoModulesCore

class SwitchProps: ObservableObject {
  @Published var value = false
  @Published var labelText: String?
  @Published var accentColor: UIColor?
  @Published var onValueChange: EventDispatcher
  @Published var onSized: EventDispatcher
  
  init(onSized: EventDispatcher, onValueChange: EventDispatcher) {
    self.onValueChange = onValueChange
    self.onSized = onSized
  }
}
