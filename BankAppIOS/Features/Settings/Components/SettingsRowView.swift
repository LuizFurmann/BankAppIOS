//
//  SettingsRowView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct SettingsRowView: View {
    
    let icon: String
    let title: String
    var value: String? = nil
    var showArrow: Bool = true
    
    var body: some View {
        
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 18))
                .foregroundColor(.blue)
                .frame(width: 24)
            
            Text(title)
                .font(.system(size: 16))
            
            Spacer()
            
            if let value = value {
                Text(value)
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            }
            
            if showArrow {
                Image(systemName: "chevron.right")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.gray.opacity(0.7))
            }
        }
        .frame(height: 56)
    }
}
