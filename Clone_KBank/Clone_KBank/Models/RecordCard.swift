//
//  RecordCard.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//

import Foundation

struct RecordCard: Identifiable, Hashable {
    let id: UUID = UUID()
    let date: Date
    let name: String
    let receiver: UUID
    let sender: UUID
    let balence: Int64
    
    init(date: Date, name: String, receiver: UUID, sender: UUID, balence: Int64) {
        self.date = date
        self.name = name
        self.receiver = receiver
        self.sender = sender
        self.balence = balence
    }
}

