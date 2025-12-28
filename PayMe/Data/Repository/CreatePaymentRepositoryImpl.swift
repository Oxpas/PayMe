//
//  CreatePaymentRepositoryImpl.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

final class CreatePaymentRepositoryImpl: CreatePaymentRepository {
    private let dataSource: CreatePaymentDataSource
    init(dataSource: CreatePaymentDataSource) {
        self.dataSource = dataSource
    }
    
    func createPayment(payment: Payment) throws {
        try dataSource.createNewPayment(payment: payment)
    }
}
