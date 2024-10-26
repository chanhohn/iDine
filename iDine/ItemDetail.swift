//
//  ItemDetail.swift
//  iDine
//
//  Created by hohn on 2024/10/25.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem

    var body: some View {
        VStack(alignment: .leading) {
            Image(item.mainImage)
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(Text(item.name))
        .padding()
    }
}

#Preview {
    NavigationStack{
        ItemDetail(item: MenuItem.example)
    }
    
}
