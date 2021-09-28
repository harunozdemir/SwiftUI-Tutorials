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
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id
        })!
    }
    
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
                    HStack {
                        Text(landmark.name)
                            .fontWeight(.light)
                            .font(.title)
                            .foregroundColor(.red)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
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
        LandmarkDetailView(landmark: ModelData().landmarks[0])
            .previewDevice("iPhone X")
    }
}
