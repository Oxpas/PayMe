//
//  DateExtension.swift
//  PayMe
//
//  Created by Николай Замараев on 26.12.2025.
//

import Foundation

extension Date {
    static let dayMonthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.dateFormat = "d MMMM YYYY"
        return formatter
    }()
    
    var dayMonthYear: String {
        Self.dayMonthFormatter.string(from: self)
    }
    
    var day: Int {
        Calendar.current.component(.day, from: self)
    }
}
