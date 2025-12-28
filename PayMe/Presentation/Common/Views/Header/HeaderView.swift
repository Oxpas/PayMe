//
//  MainHeaderView.swift
//  PayMe
//
//  Created by Николай Замараев on 24.12.2025.
//

import SwiftUI

struct HeaderView: View {
    var page: HeaderViewContent
    var action: (() -> Void)?
    @Binding var date: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                Text("\(page.totalPrice) 💵")
                    .RS(.semibold, 20)
                    .foregroundStyle(.white)
                
                Spacer()
                
                if page.pageType == .main {
                    Button {
                        action?()
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.payYellow)
                                .frame(width: 25)
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 11)
                                .foregroundStyle(.payBlack)
                        }
                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text(page.title)
                        .RS(.semibold, 27)
                    Spacer()
                    if page.pageType == .paymentList {
                        
                        DatePicker("", selection: $date,
                                   displayedComponents: [.date])
                        .frame(width: 22)
                        .clipped()
                        .overlay {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .background(.payBlack)
                                .allowsHitTesting(false)
                        }
                    }
                }
                
                Text(page.date)
                    .RS(.regular, 14)
            }
            .foregroundStyle(.payYellow)
        }
        .padding(.bottom, 20)
        .background(.payBlack)
    }
}
