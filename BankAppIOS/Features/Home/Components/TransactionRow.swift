//
//  TransactionRow.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct TransactionRow: View {
    
    let icon: String
    let title: String
    let amount: String
    
    var body: some View {
        HStack {
            Text(icon)
            
            Text(title)
                .foregroundColor(.primary)
            
            Spacer()
            
            Text(amount)
                .foregroundColor(.gray)
        }
    }
}

