//
//  PaymentMapper.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation
import CoreData

struct PaymentMapper {
    
    static func toDomain(from entity: PaymentEntity) -> Payment {
        var payment = Payment(id: entity.id,
                              type: PayType(rawValue: Int(entity.type)) ?? .monthly,
                              title: entity.title,
                              description: entity.descriptionText,
                              paymentAmount: entity.paymentAmount,
                              totalAmount: entity.totalAmount,
                              dueDay: Int(entity.dueDay),
                              dueDate: entity.dueDate ?? .now,
                              isNotificationEnabled: entity.isNotificationEnabled,
                              createdAt: entity.createdAd,
                              lastPay: entity.lastPay ?? .now)
        
        return payment
    }
    
    static func toEntity(from: Payment, context: NSManagedObjectContext) -> PaymentEntity {
        let entity = PaymentEntity(context: context)
        
        entity.id = from.id
        entity.type = Int16(from.type.rawValue)
        entity.title = from.title
        entity.descriptionText = from.description
        entity.paymentAmount = from.paymentAmount
        entity.totalAmount = from.totalAmount
        entity.dueDay = Int16(from.dueDay ?? 0)
        entity.dueDate = from.dueDate
        entity.lastPay = from.lastPay
        entity.isNotificationEnabled = from.isNotificationEnabled
        entity.createdAd = from.createdAt
        
        return entity
    }
}
