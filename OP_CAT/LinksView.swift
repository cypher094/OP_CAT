//
//  LinksView.swift
//  OP_CAT
//

import SwiftUI

struct LinksView: View {
    var body: some View {
        VStack(alignment: .leading) {
            LinkRow(title: "Bip Land", url: "https://www.quantumcats.xyz/bip-land")
            LinkRow(title: "Collection", url: "https://www.quantumcats.xyz/collection")
            LinkRow(title: "X", url: "https://x.com/QuantumCatsXYZ")
            LinkRow(title: "Discord", url: "https://discord.com/invite/taprootwizards")
                
            Spacer()
        }
        .navigationBarTitle("🔗 Links", displayMode: .inline)
    }
}

struct LinkRow: View {
    var title: String
    var url: String

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
                .foregroundColor(.purple)

            Link(url, destination: URL(string: url)!)
                .font(.subheadline)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 15)
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

#Preview {
    LinksView()
}

