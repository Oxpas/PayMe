//
//  PaymentCard.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct PaymentCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 10) {
                VStack(alignment: .leading, spacing: 5)  {
                    
                    Text("Долг по кредитке")
                        .RS(.extraBold, 20)
                    HStack(spacing: 5) {
                        Text("32.500")
                            .RS(.extraBold, 12)
                        Text("/ Остаток")
                            .RS(.semibold, 12)
                    }
                }
                Text("This course will be your personal guide to be an UI")
                    .RS(.extraLight, 14)
            }
            
            Spacer()
            
            HStack {
                HStack(spacing: 5) {
                    Text("1.200")
                        .RS(.extraBold, 18)
                    Text("/ месяц")
                        .RS(.semibold, 18)
                }
                Spacer()
                HStack(spacing: 16) {
                    Text("оплтатить до")
                        .RS(.extraLight, 12)
                    Text("21.12")
                        .RS(.semibold, 12)
                }
                .padding(.horizontal, 9)
                .padding(.bottom, 4)
                .padding(.top, 4)
                .background(.payBlack)
                .foregroundStyle(.white)
                .clipShape(Capsule())
            }
            
            HStack {
                FullButton(text: "Оплатить", fillColor: .payBlack, textColor: .white, topPadding: 12, bottomPadding: 12)
                
                SolidButton(text: "Подробнее", fillColor: .payBlack, textColor: .payBlack, topPadding: 12, bottomPadding: 12)
            }
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 20)
        .background(.payRed)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

#Preview {
    ContentView()
}
