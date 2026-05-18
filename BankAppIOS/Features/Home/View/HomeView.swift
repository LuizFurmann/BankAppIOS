//
//  HomeView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var hideAmount = false
    
    let cards = [
        
        Card(id: 1, bankName: "Nubank", flag: "MasterCard", type: "Credit", number: "123123123"),
        Card(id: 2, bankName: "Caixa", flag: "Visa", type: "Debit", number: "321321321")
    ]

    var body: some View {

            ScrollView {

                VStack(alignment: .leading, spacing: 24) {

                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Good morning,")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                            
                            Text("Luiz Furmann")
                                .font(.system(size: 30, weight: .bold))
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "bell")
                                .font(.system(size: 20))
                                .foregroundColor(Color(hex: "#0A2540"))
                                .frame(width: 52, height: 52)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: .black.opacity(0.08), radius: 8)
                        }
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 18) {
                        HStack {
                            Text("Total Balance")
                                .foregroundColor(.white.opacity(0.7))
                            
                            Spacer()
                            
                            Button {
                                hideAmount.toggle()
                            } label: {
                                Image(
                                    systemName: hideAmount ? "eye.slash" : "eye"
                                )
                                .foregroundColor(Color(.white))
                            }
                        }
                        
                        Text(
                            hideAmount ? "R$ *****" : "R$ 200.000,00"
                        )
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.white)
                        
                        Text("↑ Income +12.4%")
                            .foregroundColor(.green)
                            .fontWeight(.bold)
                        
                        Button {
                            
                        } label: {
                            Text("Add Money")
                                .foregroundColor(Color(hex: "#0A2540"))
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 52)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 18))
                        }
                    }
                    .padding(24)
                    .background(Color(hex: "#0A2540"))
                    .clipShape(RoundedRectangle(cornerRadius: 26))
                    .shadow(color: .black.opacity(0.15), radius: 10)
                    
                    
                    HStack(spacing: 12) {
                        ActionButtom(
                            title: "Send", background: Color(hex: "#EAF1FF"), textColor: Color(hex: "#0A2540")
                        )
                        
                        ActionButtom(
                            title: "Pay", background: Color(hex: "#0A2540"), textColor: .white
                        )
                        
                        ActionButtom(
                            title: "Top Up", background: Color(hex: "#EAF1FF"), textColor: Color(hex: "#0A2540")
                        )
                    }
                    
                    HStack {
                        Text("Your Cards")
                            .font(.title3.bold())
                        
                        Spacer()
                        
                        Button("+ New") {
                            
                        }
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(cards) { card in
                                BankCardView(card: card)
                            }
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 18) {
                        Text("Recent Transactions")
                            .font(.title3.bold())
                        
                        TransactionRow(
                            icon: "☕",
                            title: "Coffee Shop",
                            amount: "- R$ 18,90"
                        )

                        TransactionRow(
                            icon: "🛒",
                            title: "Market",
                            amount: "- R$ 154,20"
                        )

                        TransactionRow(
                            icon: "🎬",
                            title: "Streaming",
                            amount: "- R$ 29,90"
                        )
                    }
                    .padding(24)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .shadow(color: .black.opacity(0.05), radius: 0)
                }
                .padding(24)
            }
            .background(Color(.systemGray6))
        
    }
}

#Preview {
    HomeView()
}
