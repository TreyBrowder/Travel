//
//  LocationCarouselView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/21/24.
//

import SwiftUI

struct LocationCarouselView: View {
    
    let locations: [Location]
    
    init(){
        self.locations = [
            Location(title: "Almafi Coast", imageName: "location1"),
            Location(title: "Golden Forrest", imageName: "location3"),
            Location(title: "Grand Canyon", imageName: "location2"),
            Location(title: "Tulum", imageName: "location4")
            ]
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(locations) { model in
                    NavigationLink(
                        destination: Text(model.title),
                        label: {
                            LocationCard(model: model)
                                .frame(width: 310, height: 170, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(8)
                                .padding()
                            .padding(.trailing, -20)
                        })
                }
            }
        }
    }
}

#Preview {
    LocationCarouselView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}


