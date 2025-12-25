//
//  MainTabView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct MainTabView: View {
    @State var selectionPage: TabPage = .main
    
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
