//
//  HomeViewModel.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var user: User
    
    init() {
        self.user = makeDummyUser()
    }

    func getAccount() -> [AccountCard] {
        return user.accounts
    }
}


func makeDummyUser() -> User {
    var user = User(
        name: "홍길동",
        email: "hong@example.com",
        password: "securePassword123"
    )
    
    let user2 = UUID()
    let user3 = UUID()
    
    func makeRecord(name: String, daysAgo: Int, receiver: UUID, sender: UUID, amount: Int64) -> RecordCard {
        RecordCard(
            date: Calendar.current.date(byAdding: .day, value: -daysAgo, to: Date())!,
            name: name,
            receiver: receiver,
            sender: sender,
            balence: amount
        )
    }

    user.accounts = [
        AccountCard(
            accountId: 1001,
            name: "월급 통장",
            records: [
                makeRecord(name: "급여 입금", daysAgo: 1, receiver: user.id, sender: user2, amount: 3500000),
                makeRecord(name: "편의점", daysAgo: 2, receiver: user3, sender: user.id, amount: -5300)
            ],
            interestRate: 1,
            registerDate: Calendar.current.date(byAdding: .year, value: -1, to: Date())!,
            balance: 2450000
        ),
        AccountCard(
            accountId: 1002,
            name: "비상금 통장",
            records: [],
            interestRate: 2,
            registerDate: Calendar.current.date(byAdding: .month, value: -3, to: Date())!,
            balance: 1500000
        ),
        AccountCard(
            accountId: 1003,
            name: "생활비 통장",
            records: [
                makeRecord(name: "마트", daysAgo: 1, receiver: user3, sender: user.id, amount: -120000),
                makeRecord(name: "택시비", daysAgo: 2, receiver: user3, sender: user.id, amount: -25000)
            ],
            interestRate: 1,
            registerDate: Calendar.current.date(byAdding: .month, value: -1, to: Date())!,
            balance: 310000
        ),
        AccountCard(
            accountId: 1004,
            name: "저축 통장",
            records: [
                makeRecord(name: "저축 이체", daysAgo: 5, receiver: user.id, sender: user.id, amount: 1000000)
            ],
            interestRate: 3,
            registerDate: Calendar.current.date(byAdding: .month, value: -6, to: Date())!,
            balance: 8000000
        ),
        AccountCard(
            accountId: 1005,
            name: "여행 통장",
            records: [
                makeRecord(name: "항공권", daysAgo: 10, receiver: user3, sender: user.id, amount: -400000),
                makeRecord(name: "여행 적금", daysAgo: 20, receiver: user.id, sender: user.id, amount: 600000)
            ],
            interestRate: 2,
            registerDate: Calendar.current.date(byAdding: .month, value: -5, to: Date())!,
            balance: 550000
        )
    ]
    
    user.lastEnterDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    
    return user
}
