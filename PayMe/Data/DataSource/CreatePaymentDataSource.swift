//
//  CreatePaymentDataSourcw.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

protocol CreatePaymentDataSource {
    func createNewPayment(payment: Payment) throws
}
