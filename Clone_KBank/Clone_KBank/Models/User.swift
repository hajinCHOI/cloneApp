//
//  User.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//

import Foundation

struct User {
    let id: UUID = UUID()
    var name: String
    var email: String
    var password: String
    var accounts: [AccountCard] = []
    let registerDate: Date = Date.now
    var lastEnterDate: Date = Date.now
    
    init(name: String, email: String, password: String) {
        self.name = name
        self.email = email
        self.password = password
    }
}
