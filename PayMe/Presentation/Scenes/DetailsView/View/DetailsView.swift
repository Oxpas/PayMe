//
//  DetailsView.swift
//  PayMe
//
//  Created by Николай Замараев on 25.12.2025.
//

import SwiftUI

struct DetailsView: View {
    @State var isNotificationSelected: Bool = false
    var body: some View {
        VStack(alignment: .leading) {
            header
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading, spacing: 5) {
                    Text("82 200")
                        .foregroundStyle(.payWhite)
                        .RS(.extraBold, 25)
                    Text("Кредит на айфон")
                        .foregroundStyle(.payYellow)
                        .RS(.semibold, 14)
                }
                .padding(.vertical, 30)
                
                VStack(alignment: .leading, spacing: 17) {
                    HStack(spacing: 16) {
                        InfoTagView(text: "60 200")
                        InfoTagView(text: "3 200")
                    }
                    
                    Text("Lorem ipsum dolor sit amet, conlaskd jkfn, aosidja  kskd, ladafdsa kasd ka, sdkfnds, dsfkdsweod kdfksdf lsdlf kdf dsp")
                        .foregroundStyle(.payWhite)
                        .RS(.extraLight, 17)
                        .padding(.bottom, 10)
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Divider()
                        .background(.payWhite)
                }
                .padding(.bottom, 15)
                
                HStack {
                    Text("Ближайший платеж")
                        .RS(.semibold, 14)
                        .foregroundStyle(.payYellow)
                    Spacer()
                    HStack {
                        Text("оплачен")
                            .RS(.extraLight, 12)
                            .foregroundStyle(.payBlack)
                        Text("13.12")
                            .RS(.extraBold, 12)
                            .foregroundStyle(.payBlack)
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.payWhite)
                    .clipShape(Capsule())
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    Divider()
                        .background(.payWhite)
                }
                .padding(.bottom, 15)
                .padding(.top, 15)
                
                HStack {
                    Text("Уведомления о платеже")
                        .RS(.semibold, 14)
                        .foregroundStyle(.payYellow)
                    
                    Spacer()
                    
                    RadioButton(isSelected: $isNotificationSelected)
                }
                .padding(.vertical, 6)
                
                
            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 18) {
                SolidButton(text: "Закрыть досрочно", fillColor: .payYellow, textColor: .payBlack, topPadding: 25, bottomPadding: 25, isFull: true)

                SolidButton(text: "Удалить последний платеж", fillColor: .payYellow, textColor: .payYellow, topPadding: 25, bottomPadding: 25)
            }
            
        }
        .padding(.horizontal, 20)
        .background(.payBlack)
    }
}

#Preview {
    DetailsView()
}

extension DetailsView {
    var header: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "chevron.backward")
                    .foregroundStyle(.payYellow)
            }
            
            Spacer()
            Text("Детали платежа")
                .RS(.semibold, 20)
                .foregroundStyle(.payYellow)
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "trash")
                    .foregroundStyle(.payYellow)
            }
        }
    }
}


