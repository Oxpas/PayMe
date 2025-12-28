//
//  CreatePaymentRepository.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

protocol CreatePaymentRepository: AnyObject {
    func createPayment(payment: Payment) throws
}
