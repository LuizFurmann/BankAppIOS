//
//  TransactionItemView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct TransactionItemView: View {

    let transaction: Transaction

    var body: some View {

        HStack(spacing: 14) {

            Circle()
                .fill(Color.green.opacity(0.15))
                .frame(width: 42, height: 42)
                .overlay {

                    Image(systemName: "dollarsign")
                        .foregroundColor(.green)
                        .font(.system(size: 16, weight: .bold))
                }

            VStack(alignment: .leading, spacing: 4) {

                Text(transaction.title)
                    .font(.system(size: 16, weight: .medium))

                Text(transaction.type)
                    .font(.system(size: 13))
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(transaction.amount)
                .font(.system(size: 18, weight: .medium))
        }
        .padding(.vertical, 8)
    }
}
