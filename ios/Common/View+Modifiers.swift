
import SwiftUI
import ExpoModulesCore

extension View {
  func sizedToFit(onSized: EventDispatcher) -> some View {
    modifier(SizedToFit(onSized: onSized))
  }
  func pickerType(type: String) -> some View {
    modifier(PickerType(type: type))
  }
  func conditionalLabel(hasLabel: Bool) -> some View {
    modifier(ConditionalLabel(hasLabel: hasLabel))
  }
  func conditionalTint(color: UIColor?) -> some View {
    modifier(ConditionalTint(color: color))
  }
}

struct SizedToFit: ViewModifier {
  var onSized: EventDispatcher
  func body(content: Content) -> some View {
    if #available(iOS 15.0, *) {
      content
        .background() {
          GeometryReader { geometry in
            Path { path in
              let size = geometry.size
              DispatchQueue.main.async {
                onSized(["value" : [
                  "width": size.width,
                  "height": size.height
                ]])
              }
            }
          }
        }
    }
  }
}

struct PickerType: ViewModifier {
  var type: String
  func body(content: Content) -> some View {
    switch(type) {
    case "wheel":
      return AnyView(content.pickerStyle(.wheel))
    case "segmented":
      return AnyView(content.pickerStyle(.segmented))
    case "menu":
      if #available(iOS 14.0, *) {
        return AnyView(content.pickerStyle(.menu))
      } else {
        return AnyView(content.pickerStyle(.segmented))
      }
    default:
      return AnyView(content.pickerStyle(.segmented))
    }
  }
}

struct ConditionalLabel: ViewModifier {
  let hasLabel: Bool
  func body(content: Content) -> some View {
    if hasLabel {
      return AnyView(content)
    } else {
      return AnyView(content.labelsHidden())
    }
  }
}

struct ConditionalTint: ViewModifier {
  let color: UIColor?
  func body(content: Content) -> some View {
    if let color = color {
      if #available(iOS 16.0, *) {
        content.tint(Color(color))
      } else {
        content.accentColor(Color(color))
      }
    } else {
      content
    }
  }
}

