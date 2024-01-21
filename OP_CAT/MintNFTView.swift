//
//  MintNFTView.swift
//  OP_CAT
//

import SwiftUI

struct NFT {
    var imageName: String
    var name: String
}

struct MintNFTView: View {
    @State private var isNFTMinted = false
    @State private var mintedNFT: NFT?

    // Sample list of NFTs
    let nftList: [NFT] = [
        NFT(imageName: "cat0132", name: "Cat #0132"),
        NFT(imageName: "cat0174", name: "Cat #0174"),
        NFT(imageName: "cat0194", name: "Cat #0194"),
        NFT(imageName: "cat0275", name: "Cat #0275"),
        NFT(imageName: "cat0324", name: "Cat #0324"),
        NFT(imageName: "cat0440", name: "Cat #0440"),
        NFT(imageName: "cat0666", name: "Cat #0666"),
        NFT(imageName: "cat0795", name: "Cat #0795"),
        NFT(imageName: "cat0800", name: "Cat #0800"),
        NFT(imageName: "cat2006", name: "Cat #2006"),
        NFT(imageName: "cat3332", name: "Cat #3332"),
    ]

    var body: some View {
        VStack {
            // Display image and name if NFT is minted
            if isNFTMinted {
                if let mintedNFT = mintedNFT {
                    VStack {
                        Image(mintedNFT.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .padding(.bottom, 10)
                            .scaleEffect(isNFTMinted ? 1.2 : 1.0)
                            .animation(
                                Animation.easeInOut(duration: 0.8)
                                    .repeatCount(3, autoreverses: true)
                            )

                        Text("Minted NFT: \(mintedNFT.name)")
                            .font(.headline)
                            .padding()
                            .foregroundColor(.green)
                            .opacity(isNFTMinted ? 1.0 : 0.0)
                    }
                }
            } else {
                // Display question mark if no NFT is minted
                Text("?")
                    .font(.system(size: 100))
                    .foregroundColor(.gray)
                    .padding(.bottom, 40)

                Button(action: {
                    // Simulating a successful random mint
                    if let randomNFT = nftList.randomElement() {
                        withAnimation {
                            self.isNFTMinted = true
                            self.mintedNFT = randomNFT
                        }
                    }
                }) {
                    Text("Mint")
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(10)
                        .shadow(radius: 15)
                }
            }
        }
        .padding()
        .navigationBarTitle("🎇 Mint NFT", displayMode: .inline)
    }
}


#Preview {
    MintNFTView()
}
