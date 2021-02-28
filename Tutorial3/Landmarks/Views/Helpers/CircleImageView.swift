//
//  CircleImageView.swift
//  Landmarks
//
//  Created by Harun on 21.02.2021.
//

import SwiftUI

private let borderLineWidth: CGFloat = 4.0
private let borderColor: Color = .white
private let shadowRadius: CGFloat = 7.0

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(borderColor,
                                     lineWidth: borderLineWidth))
            .shadow(radius: shadowRadius)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image: Image("turtlerock"))
    }
}
