//
//  OrderView.swift
//  iDine
//
//  Created by hohn on 2024/10/31.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }

                Section {
                    NavigationLink("Place Order") {
                        CheckOutView()
                    }
                }
            }
        }.navigationTitle("Order")
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
