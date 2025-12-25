//
//  ContentView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct ContentView: View {
    @State var isShowAddView: Bool = false
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading) {
                HeaderView(page: HeaderViewContent(totalPrice: "723 434", title: "Сумма долга", date: "15 декабря", pageType: .main), action: {
                    isShowAddView.toggle()
                })
                MainViewContentHeader()
            }
            
            .zIndex(1)
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 19) {
                    PaymentCard()
                    PaymentCard()
                    PaymentCard()
                    PaymentCard()
                    
                    Color.clear
                        .frame(height: 60)
                }
            }
            .padding(.top, 175)
           
            
        }
        .padding(.horizontal, 20)
        .background(.payBlack)
        .sheet(isPresented: $isShowAddView, content: {
            AddView()
        })
    }
}


#Preview {
    ContentView()
}
