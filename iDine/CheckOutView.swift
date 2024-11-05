//
//  CheckOutView.swift
//  iDine
//
//  Created by hohn on 2024/11/4.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var order: Order
    let payTypes = ["Cash", "weChatPay", "AliPay", "iDentCoin"]
    @State private var payType = "weChatPay"

    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay", selection: $payType) {
                    ForEach(payTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CheckOutView().environmentObject(Order())
}
