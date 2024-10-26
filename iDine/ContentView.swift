//
//  ContentView.swift
//  iDine
//
//  Created by hohn on 2024/10/24.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) {
                    section in Section(header: Text(section.name)) {
                        ForEach(section.items) {
//                            item in NavigationLink {
//                                ItemDetail(item: item)
//                            } label: {
//                                ItemRow(item: item)
//                            }
//                            这样构建列表和详情性能更好
                            item in NavigationLink(value:item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self){
                item in ItemDetail(item:item)
            }
            .navigationTitle("Hello Title")
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
