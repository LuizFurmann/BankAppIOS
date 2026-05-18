//
//  HomeView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct HomeView: View {

    var body: some View {

        NavigationStack {

            ScrollView {

                VStack(alignment: .leading) {

                    Text("Home")
                        .font(.largeTitle)
                        .bold()
                }
                .padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
