import SwiftUI
import ExpoModulesCore

class ProgressProps: ObservableObject {
  @Published var value: Double = 0
  @Published var max: Double = 1
  @Published var accent: UIColor?
  @Published var onSized: EventDispatcher
  init(onSized: EventDispatcher) {
    self.onSized = onSized
  }
}

