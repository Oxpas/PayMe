//
//  AddView.swift
//  PayMe
//
//  Created by Николай Замараев on 25.12.2025.
//

import SwiftUI

enum PayType {
    case monthly
    case oneTime
}

struct AddView: View {
    @State var nameText: String = ""
    @State var isNotificationSelected: Bool = false
    @State var payType: PayType = .monthly
    @State var date: Date = .now
    @State var isShowCalendar: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(alignment: .leading, spacing: 25) {
                VStack(spacing: 25) {
                    Text("Добавить платеж")
                        .RS(.extraBold, 18)
                        .foregroundStyle(.payYellow)
                    
                    HStack(spacing: 30) {
                        SolidButton(text: "Каждый месяц", fillColor: .payYellow, textColor: .payYellow, topPadding: 17, bottomPadding: 17, isFull: payType == .monthly, action: {
                            payType = .monthly
                        })
                        
                        SolidButton(text: "Разово", fillColor: .payYellow, textColor: .payYellow, topPadding: 17, bottomPadding: 17, isFull: payType == .oneTime, action: {
                            payType = .oneTime
                        })
                    }
                }
                
                switch payType {
                case .monthly:
                    HStack(spacing: 4) {
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .environment(\.locale, Locale(identifier: "ru_RU"))
                            .frame(width: 25)
                            .clipped()
                            .overlay {
                                Text("\(date.day)")
                                    .underline()
                                    .RS(.semibold, 14)
                                    .foregroundStyle(.payGreen)
                                    .frame(width: 28)
                                    .padding(.vertical, 12)
                                    .background(.payBlack)
                                    .allowsHitTesting(false)
                            }
                        Text("числа")
                            .RS(.extraLight, 12)
                            .foregroundStyle(.payGreen)
                    }
                case .oneTime:
                    HStack(spacing: 4) {
                        Text("До")
                            .foregroundStyle(.payGreen)
                            .RS(.extraLight, 12)
                            
                        
                        DatePicker("", selection: $date, displayedComponents: [.date])
                            .environment(\.locale, Locale(identifier: "ru_RU"))
                            .frame(width: 140)
                            .clipped()
                            .overlay {
                                Text(date.dayMonthYear)
                                    .underline()
                                    .RS(.extraBold, 12)
                                    .foregroundStyle(.payGreen)
                                    .frame(width: 142)
                                    .padding(.vertical, 12)
                                    .background(.payBlack)
                                    .allowsHitTesting(false)
                            }
                    }
                }

            }
            
            VStack(alignment: .leading, spacing: 12) {
                FieldView(placeholder: "Название платежа", text: $nameText)
                    .padding(.vertical, 10)
                
                switch payType {
                case .monthly:
                    HStack(spacing: 10) {
                        FieldView(placeholder: "Общая сумма", text: $nameText)
                           
                        FieldView(placeholder: "Ежемесячный платеж", text: $nameText)
                    }
                case .oneTime:
                    FieldView(placeholder: "Общая сумма", text: $nameText)
                }
                    

                
                FieldView(placeholder: "Описание", text: $nameText, isTextField: false)
                    .padding(.vertical, 10)
                
            }
            
            HStack {
                Text("Уведомления о платеже")
                    .RS(.semibold, 14)
                    .foregroundStyle(.payYellow)
                
                Spacer()
                
                RadioButton(isSelected: $isNotificationSelected)
            }
            .padding(.vertical, 10)
            
            Spacer()
            
            FullButton(text: "Добавить", fillColor: .payYellow, textColor: .payBlack, topPadding: 25, bottomPadding: 25)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 20)
        .background(.payBlack)
    }
        
}

#Preview {
    AddView()
}



