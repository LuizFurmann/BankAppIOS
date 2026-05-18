//
//  ActionButtom.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct ActionButtom: View {
    
    let title: String
    let background: Color
    let textColor: Color
    
    var body: some View {
        
        Button {
            
        } label: {
            Text(title)
                .fontWeight(.semibold)
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity)
                .frame(height: 40)
                .background(background)
                .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}
