import ExpoModulesCore
import SwiftUI

struct ProgressViewView: View {
  @ObservedObject var props: ProgressProps
  @State private var progress: Double = 0
  
  var body: some View {
    if #available(iOS 14.0, *) {
      ProgressView(value: progress, total: props.max) {
        Text("Label")
      } currentValueLabel: {
        Text("Current Value: \(props.value)")
      }
      .conditionalTint(color: props.accent)
      .onAppear {
        withAnimation {
          progress = props.value
        }
      }
      .onChange(of: props.value) { newValue in
        withAnimation {
          progress = newValue
        }
      }
    }
  }
}
