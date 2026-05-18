//
//  SettingsView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var notificationEnabled = true
    @State private var locationEnabled = true
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 28) {
                
                VStack(spacing: 6) {
                    Text("Settings")
                        .font(.system(size: 32, weight: .bold))
                    
                    Text("Customize your banking experience")
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity)
                
                HStack {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Notifications")
                            .foregroundColor(.white.opacity(0.7))
                            .font(.system(size: 13))
                        
                        Text(
                            notificationEnabled
                            ? "Enabled"
                            : "Disabled"
                        )
                        .foregroundColor(.white)
                        .font(.title3.bold())
                    }
                    
                    Spacer()
                    
                    Toggle("", isOn: $notificationEnabled)
                        .labelsHidden()
                        .tint(.green)
                }
                .padding(24)
                .background(Color(hex: "#0A2540"))
                .clipShape(RoundedRectangle(cornerRadius: 24))
                .shadow(color: .black.opacity(0.12), radius: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Preferences")
                        .font(.title2.bold())
                    
                    VStack(spacing: 0) {
                        
                        SettingsRowView(icon: "globe", title: "Language", value: "EN", showArrow: false)
                        
                        Divider()

                        SettingsRowView(
                            icon: "message",
                            title: "Chat Support"
                        )
                        
                        Divider()

                        SettingsRowView(
                            icon: "slider.horizontal.3",
                            title: "More Options"
                        )
                    }
                    .padding(.horizontal, 18)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .shadow(color: .black.opacity(0.05), radius: 8)
                }
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Privacy and Secutiry")
                        .font(.title2.bold())
                    
                    VStack(spacing: 0) {
                        SettingsRowView(
                            icon: "lock",
                            title: "Change Password"
                        )

                        Divider()

                        SettingsRowView(
                            icon: "hand.raised",
                            title: "Privacy Controls"
                        )

                        Divider()
                        
                        HStack(spacing: 16) {
                            Image(systemName: "location")
                                .font(.system(size: 18))
                                .foregroundColor(.blue)
                                .frame(width: 24)
                            
                            Text("Location Access")
                                .font(.system(size: 16))
                            
                            Spacer()
                            
                            Toggle("", isOn: $locationEnabled)
                                .labelsHidden()
                                .tint(.green)
                        }
                        .frame(height: 56)
                    }
                    .padding(.horizontal, 18)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .shadow(color: .black.opacity(0.05), radius: 8)
                }
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)
            .padding(.bottom, 120)
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    SettingsView()
}
