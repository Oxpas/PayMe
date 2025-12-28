//
//  MainViewContentHeader.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct MainViewContentHeader: View {
    @Binding var payType: PayType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Долги")
                    .RS(.semibold, 14)
                    .foregroundStyle(.payYellow)
                Spacer()
                HStack {
                    Button {
                        payType = .monthly
                    } label: {
                        Text("ежемесячно")
                            .RS(payType == .monthly ? .semibold : .extraLight, 14)
                            .foregroundStyle(.white)
                    }
                    
                    Button {
                        payType = .oneTime
                    } label: {
                        Text("разово")
                            .RS(payType == .monthly ? .extraLight : .semibold, 14)
                            .foregroundStyle(.white)
                    }
                }
            }
            HStack(spacing: 4) {
                Text("25,500 /")
                    .RS(.semibold, 14)
                Text("Каждый месяц")
                    .RS(.extraLight, 14)
            }
            .foregroundStyle(.white)
        }
    }
}
