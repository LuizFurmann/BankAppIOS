//
//  MainTabView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        ZStack {
            Color(.systemGray6)
                .ignoresSafeArea()
            
            TabView(selection: $selectedTab) {
                
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                    .tag(0)
                
                TransferView().accessibilityElement()
                    .tabItem {
                        Image(systemName: "arrow.left.arrow.right")
                        Text("Transfer")
                    }
                    .tag(1)
                
                SettingsView().accessibilityElement()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    }
                    .tag(2)
                
                ProfileView().accessibilityElement()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }
                    .tag(3)
            }
            .accentColor(Color(hex: "#08284A"))
        }
    }
}

#Preview {
    MainTabView()
}
