//
//  ContentView.swift
//  Expandable_Menu_Items
//
//  Created by Anmol Maheshwari on 03/11/20.
//

import SwiftUI

struct ContentView: View {
    
    let listData: [ItemData] = [.FirstData, .SecondData, .ThirdData]
    
    var body: some View {
        NavigationView {
            List(listData, children: \.subItems) { item in
                CellView(item: item).shadow(radius: 5)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Expandable Table")
        }
    }
}

struct CellView: View {
    var item: ItemData
    
    var body: some View {
        HStack {
            Image.init(uiImage: item.image)
            Text(item.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//            .listStyle(SidebarListStyle())
//            .listStyle(InsetListStyle())
//            .listStyle(PlainListStyle())
//            .listStyle(InsetGroupedListStyle())
//            .listStyle(GroupedListStyle())
//            .listStyle(DefaultListStyle())
