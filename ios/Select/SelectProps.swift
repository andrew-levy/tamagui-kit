import SwiftUI
import ExpoModulesCore

class SelectProps: ObservableObject {
  @Published var type: String = "menu"
  @Published var value: Int = 0
  @Published var options: [String] = []
  @Published var accentColor: UIColor?
  @Published var onSized: EventDispatcher
  @Published var onValueChange: EventDispatcher
  
  init(onSized: EventDispatcher, onValueChange: EventDispatcher) {
    self.onSized = onSized
    self.onValueChange = onValueChange
  }
}
