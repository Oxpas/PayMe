//
//  SolidButton.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct SolidButton: View {
    var text: String
    var fillColor: Color
    var textColor: Color
    var topPadding: CGFloat
    var bottomPadding: CGFloat
    var isFull: Bool = false
    var action: (() -> Void)?
    
    var body: some View {
        Button {
            action?()
        } label: {
            Text(text)
                .RS(.extraLight, 14)
                .padding(.top, topPadding)
                .padding(.bottom, bottomPadding)
                .frame(maxWidth: .infinity)
                .foregroundStyle(isFull ? .payBlack : textColor)
                .background(isFull ? fillColor : .clear)
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(fillColor, lineWidth: 1)
                }
        }
    }
}

