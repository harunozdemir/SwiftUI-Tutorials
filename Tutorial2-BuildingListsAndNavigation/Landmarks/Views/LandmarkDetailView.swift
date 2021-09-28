//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Harun on 24.02.2021.
//

import SwiftUI

private let mapViewHeight: CGFloat = 300
private let circleImageViewBottomPadding: CGFloat = -130
private let circleImageViewYOffset: CGFloat = -130

struct LandmarkDetailView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            VStack {
                //MapView
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: mapViewHeight)
                
                //CircleImageView
                CircleImageView(image: landmark.image)
                    .padding(.bottom, circleImageViewBottomPadding)
                    .offset(y: circleImageViewYOffset)
                
                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .fontWeight(.light)
                        .font(.title)
                        .foregroundColor(.red)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
        }
        
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: landmarks[0])
            .previewDevice("iPhone X")
    }
}
