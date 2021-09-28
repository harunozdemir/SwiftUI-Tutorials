//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Harun on 1.03.2021.
//

import SwiftUI

struct FavoriteButton: View {
    // *
    // @Binding -> Bind eden property'yi set eder
    // Ex. FavoriteButton(isSet: landmarks.isFavorite)
    // isSet.toogle() çağırdığımızda true->false ya da false->true olarak setlenir.
    // isSet'e gönderilen property landmarks.isFavorite olduğu için
    // landmarks array'inde ki isFavorite değeri'de setlenir.
    // *
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(
                    isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
            .previewLayout(.sizeThatFits)
    }
}
