//
//  ContentView.swift
//  Landmarks
//
//  Created by Harun on 24.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkListView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone X")
            .environmentObject(ModelData())
        // *
        // .environmentObject(ModelData()) veriyi LandmarkListView'a iletir(SubView)
        // LandmarkListView'dan veriyi alabilmek için
        // @EnvironmentObject kullanılır
        // @EnvironmentObject var modelData: ModelData
        // *
    }
}
