//
//  ContentView.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("홈", systemImage: "house.fill") {
                HomeView()
            }
            Tab("발견", systemImage: "bag.fill") {
                DiscoveryView()
            }
            Tab("혜택", systemImage: "gift.fill") {
                BenefitView()
            }
            Tab("투자", systemImage: "chart.line.uptrend.xyaxis") {
                InvestmentView()
            }
            Tab("전체", systemImage: "text.justify") {
                TotalView()
            }
        }
    }
}

#Preview {
    ContentView()
}
