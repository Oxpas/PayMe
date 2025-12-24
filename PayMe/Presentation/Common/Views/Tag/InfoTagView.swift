//
//  InfoTagView.swift
//  PayMe
//
//  Created by Николай Замараев on 25.12.2025.
//

import SwiftUI

struct InfoTagView: View {
    var text: String
    var body: some View {
        Text(text)
            .RS(.semibold, 17)
            .foregroundStyle(.payYellow)
            .padding(.horizontal, 17)
            .padding(.top, 9)
            .padding(.bottom, 9)
            .overlay {
                Capsule()
                    .stroke(.payYellow, lineWidth: 1)
            }
            
    }
}
