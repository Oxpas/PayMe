//
//  PaymentsView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct PaymentsView: View {
    @State var date: Date = .now
    @Binding var path: NavigationPath
    
    var body: some View {
        ZStack(alignment: .top) {
            
            HeaderView(page: HeaderViewContent(totalPrice: "25 500", title: "Платежей", date: date.withoutDayMonthYear, pageType: .paymentList), date: $date)
                       
                .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack {
                    PaymentCard(path: $path)
                    PaymentCard(path: $path)
                    
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
