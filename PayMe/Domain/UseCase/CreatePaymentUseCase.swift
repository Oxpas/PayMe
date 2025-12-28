//
//  CreatePaymentUseCase.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

protocol CreatePaymentUseCase: AnyObject {
    func execute(payments: Payment) throws
}

final class CreatePaymentUseCaseImp: CreatePaymentUseCase {
    private let repository: CreatePaymentRepository
    
    init(repository: CreatePaymentRepository) {
        self.repository = repository
    }
    func execute(payments: Payment) throws {
       try repository.createPayment(payment: payments)
    }
}
