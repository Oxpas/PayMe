//
//  AddViewModel.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import SwiftUI
import Combine

final class AddViewModel: ObservableObject {
    private let createUseCase: CreatePaymentUseCase
    
    init(createUseCase: CreatePaymentUseCase) {
        self.createUseCase = createUseCase
    }
    
    @Published var isNotificationSelected: Bool = false
    @Published var payType: PayType = .monthly
    @Published var date: Date = .now
    @Published var isShowCalendar: Bool = false
    @Published var isAdded: Bool = true
    
    @Published var nameText: String = ""

    
    func createNewPayment() {
        do {
            try createUseCase.execute(payments: Payment(id: UUID().uuidString,
                                                        type: .monthly,
                                                       title: "sadasd",
                                                       description: "sadasd",
                                                       paymentAmount: 10,
                                                       totalAmount: 20,
                                                       isNotificationEnabled: true,
                                                        createdAt: .now,
                                                        lastPay: nil))
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
