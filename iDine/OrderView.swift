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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    OrderView().environmentObject(Order())
}
