//
//  TabItem 2.swift
//  PayMe
//
//  Created by Николай Замараев on 26.12.2025.
//
import SwiftUI

struct TabItem: View {
    var image: String
    var text: String
    var pageType: TabPage
    @Binding var selected: TabPage
    
    var body: some View {
        Button {
            selected = pageType
        } label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 23, height: 23)
                Text(text)
                    .RS(.extraLight, 16)
            }
            .foregroundStyle(pageType == selected ? .payBlack : .payYellow)
            .padding(.vertical, 6)
            .padding(.horizontal, 18)
            .background(pageType == selected ? .payGreen : .payBlack)
            .clipShape(RoundedRectangle(cornerRadius: 35))
        }
    }
}
