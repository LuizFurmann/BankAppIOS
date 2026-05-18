//
//  ProfileView.swift
//  BankAppIOS
//
//  Created by Luiz Furmann on 18/05/26.
//

import SwiftUI

struct ProfileView: View {

    var body: some View {

        ScrollView(showsIndicators: false) {

            VStack(spacing: 28) {

                // HEADER

                VStack(spacing: 6) {

                    Text("Profile")
                        .font(.system(size: 32, weight: .bold))

                    Text("Manage your personal information")
                        .foregroundColor(.gray)
                }

                // PROFILE IMAGE

                ZStack(alignment: .bottomTrailing) {

                    Image("profile_placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 170, height: 170)
                        .clipShape(Circle())
                        .overlay {

                            Circle()
                                .stroke(Color.gray.opacity(0.15), lineWidth: 1)
                        }
                        .shadow(color: .black.opacity(0.15), radius: 10)

                    Button {

                    } label: {

                        Image(systemName: "pencil")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                            .frame(width: 52, height: 52)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.2), radius: 8)
                    }
                    .offset(x: -4, y: -8)
                }

                // USER INFO

                VStack(spacing: 4) {

                    Text("Luiz Furmann")
                        .font(.system(size: 28, weight: .bold))

                    Text("Premium Banking User")
                        .foregroundColor(.gray)
                }

                // PERSONAL INFO CARD

                VStack(alignment: .leading, spacing: 24) {

                    HStack {

                        Text("Personal Info")
                            .font(.title2.bold())

                        Spacer()

                        Button("Edit") {

                        }
                        .foregroundColor(.blue)
                        .fontWeight(.bold)
                    }

                    VStack(spacing: 22) {

                        ProfileInfoRow(
                            icon: "person",
                            title: "Full Name",
                            value: "Luiz Furmann"
                        )

                        ProfileInfoRow(
                            icon: "envelope",
                            title: "E-mail",
                            value: "furmannluiz@gmail.com"
                        )

                        ProfileInfoRow(
                            icon: "phone",
                            title: "Phone",
                            value: "(12) 12345-6789"
                        )

                        ProfileInfoRow(
                            icon: "location",
                            title: "Address",
                            value: "Av. Rua de teste, 9999"
                        )
                    }
                }
                .padding(24)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 26))
                .shadow(color: .black.opacity(0.08), radius: 10)
            }
            .padding(.horizontal, 24)
            .padding(.top, 16)
            .padding(.bottom, 120)
        }
        .background(Color(.systemGray6))
    }
}

#Preview {
    ProfileView()
}
