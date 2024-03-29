//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Infonal A.Ş. on 28.09.2021.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark?
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark?.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark?.name ?? "")
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15.0)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks.first)
    }
}
