//
//  FieldView.swift
//  PayMe
//
//  Created by Николай Замараев on 26.12.2025.
//

import SwiftUI

struct FieldView: View {
    var placeholder: String
    @Binding var text: String
    var isTextField: Bool = true
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(placeholder)
                .RS(.semibold, 12)
                .foregroundStyle(.payYellow)
            
            if isTextField {
                TextField("", text: $text)
                    .frame(height: 50)
                    .padding(.horizontal, 10)
                    .background(.payWhite)
                    .clipShape(Capsule())
                    .overlay {
                        Capsule()
                            .stroke(.payWhite, lineWidth: 1)
                    }
            } else {
                TextEditor(text: $text)
                    .frame(height: 150)
                    .padding(.horizontal, 10)
                    .background(.payWhite)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.payWhite, lineWidth: 1)
                    }
            }
        }
    }
}
