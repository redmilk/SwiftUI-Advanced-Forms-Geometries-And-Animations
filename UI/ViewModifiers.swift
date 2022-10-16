//
//  ViewModifiers.swift
//  Test
//
//  Created by Danyl Timofeyev on 16.10.2022.
//

import SwiftUI

// MARK: - View Modifiers

struct SonyaFormatter: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .cornerRadius(20)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.cyan, radius: 2, x: 0, y: 5)
    }
}
