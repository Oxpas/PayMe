//
//  PaymentEntity+CoreDataClass.swift
//  PayMe
//
//  Created by Николай Замараев on 29.12.2025.
//
//

public import Foundation
public import CoreData

public typealias PaymentEntityCoreDataClassSet = NSSet

@objc(PaymentEntity)
public class PaymentEntity: NSManagedObject {

}

public typealias PaymentEntityCoreDataPropertiesSet = NSSet

extension PaymentEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PaymentEntity> {
        return NSFetchRequest<PaymentEntity>(entityName: "PaymentEntity")
    }

    @NSManaged public var createdAd: Date
    @NSManaged public var descriptionText: String
    @NSManaged public var dueDate: Date?
    @NSManaged public var dueDay: Int16
    @NSManaged public var id: String
    @NSManaged public var isNotificationEnabled: Bool
    @NSManaged public var paymentAmount: Double
    @NSManaged public var title: String
    @NSManaged public var totalAmount: Double
    @NSManaged public var type: Int16
    @NSManaged public var lastPay: Date?

}

extension PaymentEntity : Identifiable {

}
