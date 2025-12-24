//
//  RadioButton.swift
//  PayMe
//
//  Created by Николай Замараев on 25.12.2025.
//

import SwiftUI

struct RadioButton: View {
    @Binding var isSelected: Bool
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.payYellow, lineWidth: 2)
                .frame(width: 20)
            if isSelected {
                Circle()
                    .fill(.payYellow)
                    .frame(width: 10)
            }
        }
        .onTapGesture {
            isSelected.toggle()
        }
    }
}
