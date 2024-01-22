import SwiftUI
import ExpoModulesCore

class ColorPickerProps: ObservableObject {
  @Published var label: String = ""
  @Published var value: UIColor = .white
  @Published var onSized: EventDispatcher
  @Published var onValueChange: EventDispatcher
  
  init(onSized: EventDispatcher, onValueChange: EventDispatcher) {
    self.onSized = onSized
    self.onValueChange = onValueChange
  }
}
