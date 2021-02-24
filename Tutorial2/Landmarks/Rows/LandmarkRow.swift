//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Harun on 24.02.2021.
//

import SwiftUI

private let imageWidthSize: CGFloat = 50
private let imageHeightSize: CGFloat = 50

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: imageWidthSize,
                       height: imageHeightSize)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
            LandmarkRow(landmark: landmarks[2])
        }
        .previewLayout(.sizeThatFits)
    }
}
