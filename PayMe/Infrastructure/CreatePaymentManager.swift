//
//  CreatePaymentManager.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation
import CoreData

final class CreatePaymentManager: CreatePaymentDataSource {
    let context = PersistentContainer.shared.persistentContainer.viewContext
    
    func createNewPayment(payment: Payment) throws {
        let _ = PaymentMapper.toEntity(from: payment, context: context)
        try context.save()
    }

}

class PersistentContainer {
    static let shared = PersistentContainer()
    private init() {}
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "db")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
}
