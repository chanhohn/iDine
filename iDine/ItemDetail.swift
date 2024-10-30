//
//  ItemDetail.swift
//  iDine
//
//  Created by hohn on 2024/10/25.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order

    var body: some View {
//       设置文字的对齐方式
        VStack(alignment: .leading) {
//            设置Zstack中Text的对齐方式，为右下角
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo by: \(item.photoCredit)")
                    .font(.caption)
                    .padding(8)
                    .background(.black)
                    .foregroundStyle(.white)
                    .offset(x: -8, y: -4)
            }

            Text(item.description)
                .padding()
            
            Button("Order This") {
                order.add(item: item)
            }
            .buttonStyle(.borderedProminent)
            Spacer()
        }
        .navigationTitle(Text(item.name))
//       将标题变小，而不是特别粗的标题样式
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ItemDetail(item: MenuItem.example).environmentObject(Order())
    }
}
