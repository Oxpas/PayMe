//
//  MainTabView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPage: TabPage = .paymentList
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectionPage) {
                ContentView()
                    .tag(TabPage.main)
                PaymentsView()
                    .tag(TabPage.paymentList)
            }
            
            HStack(spacing: 30) {
                TabItem(image: "house", text: "Главная", pageType: .main, selected: $selectionPage)
                TabItem(image: "creditcard", text: "Платежи", pageType: .paymentList, selected: $selectionPage)
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 20)
            .padding(.bottom, 1)
            
        }

    }
}

#Preview {
    MainTabView()
}

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
