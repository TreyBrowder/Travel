//
//  Place.swift
//  TravelApp
//
//  Created by Trey Browder on 1/20/24.
//

import Foundation

class Place: ObservableObject {
    var type: PlaceType = .unknown
    var location = Location()
    var title: String = ""
    var description: String = ""
    var imageName: String = ""
    
}
