//
//  PlaceCardView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/25/24.
//

import Foundation
import SwiftUI

struct PlaceCardView: View {
    var placeModel: Place
    
    var body: some View {
        VStack(alignment: .leading) {
            //image
            Image(placeModel.type.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, 5)
            
            //title
            Text(placeModel.title)
                .bold()
                .font(.system(size: 24))
                
            
            //Description
            Text(placeModel.description)
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
            
            //Location Title
            Text(placeModel.location.title)
                .foregroundColor(Color(.secondaryLabel))
            
            //Type
            Text(placeModel.type.rawValue.lowercased())
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()
        .background(Color(.secondarySystemBackground))
    }
}
