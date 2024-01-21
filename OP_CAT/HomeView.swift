//
//  ContentView.swift
//  OP_CAT

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("btc")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)

                Text("Bringing OP_CAT 🐱 \nback to Bitcoin")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 100)

                NavigationLink(destination: InfoView()) {
                    Text("ℹ️ Info")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.orange)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
                .padding(.bottom, 20)

                NavigationLink(destination: SortingCatView()) {
                    Text("🐱 Sorting Cat")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
                .padding(.bottom, 20)

                NavigationLink(destination: MintNFTView()) {
                    Text("🎇 Mint NFT")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
                .padding(.bottom, 20)

                NavigationLink(destination: LinksView()) {
                    Text("🔗 Links")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.purple)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
            }.navigationBarTitle("Quantum Cats", displayMode: .inline)
        }
    }
}


#Preview {
    HomeView()
}
