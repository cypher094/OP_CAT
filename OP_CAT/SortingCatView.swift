//
//  SortingCatView.swift
//  OP_CAT
//

import SwiftUI

struct SortingCatView: View {
    @State private var isDarkTheme = false

    var body: some View {
        VStack {
            Text("🤔 Do you want to be on Team Alive or Team Dead ???\n\n⏰ The time has come to make your decision!")
                .padding()
                .foregroundColor(isDarkTheme ? .white : .black)
            HStack {
                Button(action: {
                    isDarkTheme.toggle()
                    updateAppTheme(isDarkTheme: isDarkTheme)
                }) {
                    Text("Alive 🐱")
                        .foregroundColor(.black)
                        .padding()
                        .frame(width: 120, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }

                Button(action: {
                    isDarkTheme.toggle()
                    updateAppTheme(isDarkTheme: isDarkTheme)
                }) {
                    Text("Dead 💀")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 120, height: 50)
                        .background(isDarkTheme ? Color.clear : Color.black)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: isDarkTheme ? 1 : 0)
                        )
                        .shadow(radius: 15)
                }
            }
            .padding(.bottom, 20)
        }
        .navigationBarTitle("🐱 Sorting Cat", displayMode: .inline)
    }

    private func updateAppTheme(isDarkTheme: Bool) {
        if isDarkTheme {
            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .dark
        } else {
            UIApplication.shared.windows.first?.rootViewController?.overrideUserInterfaceStyle = .light
        }
    }
}

#Preview {
    SortingCatView()
}

