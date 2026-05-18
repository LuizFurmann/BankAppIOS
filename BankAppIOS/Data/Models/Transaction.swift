//
//  Transaction.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import Foundation

struct Transaction: Identifiable {
    
    let id: Int
    let title: String
    let type: String
    let amount: String
    let date: String
}
