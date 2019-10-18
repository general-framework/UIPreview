//
//  File.swift
//  
//
//  Created by Jacob Martin on 10/18/19.
//

import UIKit

#if canImport(SwiftUI) && DEBUG
import SwiftUI
public struct UIPreview<View: UIView>: UIViewRepresentable {
    let view: View

    init(_ builder: @escaping () -> View) {
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
