//
//  BankCardView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct BankCardView: View {
    
    let card: Card
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            HStack {
                Circle()
                    .fill(.red)
                    .frame(width: 26)
                
                Circle()
                    .fill(.orange)
                    .frame(width: 26)
                    .offset(x: -10)
            }
            Spacer()
            
            Text(card.type)
                .foregroundColor(.white.opacity(0.8))
            
            Text(card.number)
                .foregroundColor(.white)
                .fontWeight(.bold)
        }
        .padding(20)
        .frame(width: 200, height: 240)
        .background(
            LinearGradient(colors: [
                Color.black.opacity(0.85),
                Color.black.opacity(0.65)
            ], startPoint: .topLeading, endPoint: .bottomTrailing)
        )
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}
