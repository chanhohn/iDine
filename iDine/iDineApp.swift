//
//  iDineApp.swift
//  iDine
//
//  Created by hohn on 2024/10/24.
//

import SwiftUI

@main
struct iDineApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
