//
//  CheckOutView.swift
//  iDine
//
//  Created by hohn on 2024/11/4.
//

import SwiftUI

struct CheckOutView: View {
    @EnvironmentObject var order: Order
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    let payTypes = ["Cash", "weChatPay", "AliPay", "iDentCoin"]
    @State private var payType = "weChatPay"
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15

    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay", selection: $payType) {
                    ForEach(payTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
//           当用户打开开关的时候才显示填写会员卡的视图
            if addLoyaltyDetails {
                TextField("Enter your iDine ID", text: $loyaltyNumber)
            }
            
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Section("Total: $100") {
                Button("Confirm order") {
                    // place the order
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
