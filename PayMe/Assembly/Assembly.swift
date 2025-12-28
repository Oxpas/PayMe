//
//  Assembly.swift
//  PayMe
//
//  Created by Николай Замараев on 28.12.2025.
//

import Foundation

final class Assembly {
    static func createMainViewModel() {
        
    }
    
    static func createAddViewModel() -> AddViewModel {
        let manager = CreatePaymentManager()
        let repo = CreatePaymentRepositoryImpl(dataSource: manager)
        let useCase = CreatePaymentUseCaseImp(repository: repo)
        
        return AddViewModel(createUseCase: useCase)
    }
}
