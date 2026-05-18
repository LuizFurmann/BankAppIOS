//
//  TransferView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct TransferView: View {
    
    @State private var search = ""
    @State private var selectedFilter = "All"
    
    let filters = ["All", "Income", "Expense"]
    
    let transactions = [
        Transaction(
            id: 1,
            title: "Coffe shop",
            type: "Debit",
            amount: "50,00",
            date: "10/10/2025"
        ),
        
        Transaction(
            id: 2,
            title: "Restaurant",
            type: "Credit",
            amount: "130,00",
            date: "10/10/2025"
        ),

        Transaction(
            id: 3,
            title: "Gas station",
            type: "Credit",
            amount: "230,00",
            date: "10/10/2025"
        ),

        Transaction(
            id: 4,
            title: "Restaurant",
            type: "Debit",
            amount: "100,00",
            date: "09/10/2025"
        ),

        Transaction(
            id: 5,
            title: "Coffee shop",
            type: "Debit",
            amount: "50,00",
            date: "09/10/2025"
        )
    ]
    
    var groupTransactions: [String: [Transaction]] {
        Dictionary(grouping: transactions) { $0.date}
    }
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(spacing: 22) {
                VStack(spacing: 6) {
                    Text("Transactions")
                        .font(.system(size: 32, weight: .bold))
                    
                    Text("Track your recent payments")
                        .foregroundColor(.gray)
                }
                
                HStack {
                    TextField("Search transactions", text: $search)
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 18))
                .shadow(color: .black.opacity(0.08), radius: 8)
                .padding(.horizontal, 6)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 12) {
                        ForEach(filters, id: \.self) { filter in
                            Button {
                                
                            } label: {
                                Text(filter)
                                    .fontWeight(.medium)
                                    .foregroundColor(
                                        selectedFilter == filter
                                        ? .white
                                        : Color(hex: "#0A2540")
                                    )
                                    .padding(.horizontal, 22)
                                    .frame(height: 42)
                                    .background(
                                        selectedFilter == filter
                                        ? Color(hex: "#0A2540")
                                        : Color(hex: "#EAF1FF")
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                            }
                        }
                    }
                    .padding(.horizontal, 6)
                }
                
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Income")
                            .foregroundColor(.white.opacity(0.7))
                        
                        Text("+ R$ 8.400")
                            .foregroundColor(.green)
                            .font(.title3.bold())
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing, spacing: 8) {
                        Text("Expense")
                            .foregroundColor(.white.opacity(0.7))
                        
                        Text("- R$ 2.100")
                            .foregroundColor(.red.opacity(0.8))
                            .font(.title3.bold())
                    }
                }
                .padding(22)
                .background(Color(hex: "#0A2540"))
                .clipShape(RoundedRectangle(cornerRadius: 22))
                .shadow(color: .black.opacity(0.12), radius: 10)
                .padding(.horizontal, 6)
                
                LazyVStack(alignment: .leading, spacing: 20) {

                    ForEach(groupTransactions.keys.sorted(by: >), id: \.self) { date in

                        VStack(alignment: .leading, spacing: 12) {

                            Text(date)
                                .font(.system(size: 14))
                                .foregroundColor(.gray)

                            ForEach(groupTransactions[date] ?? []) { transaction in

                                TransactionItemView(
                                    transaction: transaction
                                )
                            }
                        }
                    }
                }
                .padding(.horizontal, 28)
                .padding(.top, 16)
                .padding(.bottom, 120)
            }
        }
    }
}

#Preview {
    TransferView()
}

