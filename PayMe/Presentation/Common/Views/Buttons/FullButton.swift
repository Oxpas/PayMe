//
//  FullButton.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct FullButton: View {
    var text: String
    var fillColor: Color
    var textColor: Color
    var topPadding: CGFloat
    var bottomPadding: CGFloat
    
    var body: some View {
        Button {
            
        } label: {
            Text(text)
                .RS(.extraLight, 14)
                .foregroundStyle(textColor)
                .padding(.top, topPadding)
                .padding(.bottom, bottomPadding)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .clipShape(Capsule())
        }
    }
}
