//
//  ItemRow.swift
//  iDine
//
//  Created by hohn on 2024/10/25.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .orange]

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(.circle)
                .overlay(Circle().stroke(.gray, lineWidth: 2))
//              .padding()
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.title2)
                Text("$\(item.price)")
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
            }
            Spacer()
            ForEach(item.restrictions, id: \.self) {
                restriction in Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundStyle(.white)
            }
        }
//        .padding()
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
