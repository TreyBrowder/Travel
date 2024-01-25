//
//  Place.swift
//  TravelApp
//
//  Created by Trey Browder on 1/20/24.
//

import Foundation

class Place: ObservableObject, Identifiable {
    var id = UUID()
    var type: PlaceType = .unknown
    var location = Location(title: "", imageName: "")
    var title: String = ""
    var description: String = ""
    
    init(type: PlaceType, location: Location, title: String, description: String) {
        self.type = type
        self.location = location
        self.title = title
        self.description = description
    }
    
}
