//
//  Payment.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

struct Payment: Identifiable {
    let id: String
    let type: PayType
    var title: String
    var description: String
    var paymentAmount: Double
    var totalAmount: Double
    var dueDay: Int?
    var dueDate: Date?
    var isNotificationEnabled: Bool
    var createdAt: Date
}
