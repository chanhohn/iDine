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
        NavigationView {
            List {
                ForEach(menu) {
                    section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) {
                            item in NavigationLink {
                                Text(item.name)
                            } label: {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Hello Title")
            .listStyle(GroupedListStyle())
        }
    }
}

#Preview {
    ContentView()
}
