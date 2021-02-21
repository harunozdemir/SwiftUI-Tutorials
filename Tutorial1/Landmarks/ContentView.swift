//
//  ContentView.swift
//  Landmarks
//
//  Created by Harun on 20.02.2021.
//

import SwiftUI


private let mapViewHeight: CGFloat = 300
private let circleImageViewBottomPadding: CGFloat = -130
private let circleImageViewYOffset: CGFloat = -130

struct ContentView: View {
    var body: some View {
        VStack {
            //MapView
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: mapViewHeight)
            
            //CircleImageView
            CircleImageView()
                .padding(.bottom, circleImageViewBottomPadding)
                .offset(y: circleImageViewYOffset)
           
            VStack(alignment: .leading) {
                Text("Merhaba!")
                    .fontWeight(.light)
                    .font(.title)
                    .foregroundColor(.red)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("California")
            }
            .padding()
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
