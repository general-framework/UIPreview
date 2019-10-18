//
//  UIPreview.swift
//  
//
//  Created by Jacob Martin on 10/18/19.
//

#if canImport(UIKit) && canImport(SwiftUI) && DEBUG
import UIKit
import SwiftUI
public struct UIPreview<View: UIView>: UIViewRepresentable {
    let view: View

    public init(_ builder: @escaping () -> View) {
        view = builder()
    }

    // MARK: - UIViewRepresentable
    public func makeUIView(context: Context) -> UIView {
        return view
    }

    public func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
#endif
