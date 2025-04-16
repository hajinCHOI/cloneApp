//
//  AccountCard.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//
import Foundation

struct AccountCard: Identifiable, Hashable {
    let id: UUID = UUID()
    let accountId: Int64
    var name: String
    var records: [RecordCard]
    var interestRate: Int
    var registerDate: Date
    var balance: Int64
//    let category: enum
    
    init(accountId: Int64, name: String, records: [RecordCard], interestRate: Int, registerDate: Date, balance: Int64) {
        self.accountId = accountId
        self.name = name
        self.records = records
        self.interestRate = interestRate
        self.registerDate = registerDate
        self.balance = balance
    }
}
