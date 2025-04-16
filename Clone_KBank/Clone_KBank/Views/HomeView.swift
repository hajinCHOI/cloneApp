//
//  HomeView.swift
//  Clone_KBank
//
//  Created by 최하진 on 4/16/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var homeViewModel = HomeViewModel()
    let columns = [GridItem(.flexible())]
    var body: some View {
        NavigationStack {
            VStack {
                AccountsView(accounts: homeViewModel.getAccount())
            }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Text("홈")
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    ToolbarItem {
                        Button {
                            print("Alarm")
                        } label: {
                            Image(systemName: "bell")
                        }
                    }
                }
            }
        }
    }


struct AccountsView: View {
    @State var accounts: [AccountCard]
    var body: some View {
        List {
            Text("계좌")
                .fontWeight(.bold)
                .padding(.top, 10)
            ForEach(accounts) { account in
                HStack {
                    Image(systemName: "circle.fill")
                        .font(.largeTitle)
                    VStack(alignment: .leading) {
                        Text(account.name)
                            .font(.footnote)
                            .padding(.bottom, 2)
                            .foregroundStyle(Color.gray)
                        Text("\(account.balance)원")
                            .font(.headline)
                            .fontWeight(.semibold)
                    }
                }
                .padding(.top, 5)
                .padding(.bottom, 5)
            }
            .listRowSeparator(.hidden)
            HStack {
                Spacer()
                Button {
                    print("더보기 버튼")
                } label: {
                    Text("더보기")
                        .foregroundStyle(Color.gray)
                        .padding(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
