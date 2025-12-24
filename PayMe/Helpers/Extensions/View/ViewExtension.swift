//
//  ViewExtension.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

extension View {
    func RS(_ font: RS = .regular, _ size: CGFloat = 14) -> some View {
        self
            .font(.custom(font.rawValue, size: size))
    }
}
