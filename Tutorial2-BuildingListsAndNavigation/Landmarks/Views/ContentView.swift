//
//  ContentView.swift
//  Landmarks
//
//  Created by Harun on 24.02.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone X")
    }
}
