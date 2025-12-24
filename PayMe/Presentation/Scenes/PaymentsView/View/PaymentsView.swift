//
//  PaymentsView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct PaymentsView: View {
    var body: some View {
        ZStack(alignment: .top) {
            HeaderView(page: HeaderViewContent(totalPrice: "25 500", title: "Платежей", date: "В декабре 2025", pageType: .paymentList), action: {
                print("Show calendar")
            })
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack {
                    PaymentCard()
                    PaymentCard()
                    
                    Color.clear
                        .frame(height: 60)
                }
                .padding(.top, 130)
                
            }
        }
        .padding(.horizontal, 20)
        .background(.payBlack)
    }
}

#Preview {
    MainTabView()
}
