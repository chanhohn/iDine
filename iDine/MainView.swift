//
//  MainView.swift
//  iDine
//
//  Created by hohn on 2024/11/3.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Menu",systemImage: "list.dash")
            }
            OrderView().tabItem{
                Label("Order",systemImage: "square.and.pencil")
            }
        }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
