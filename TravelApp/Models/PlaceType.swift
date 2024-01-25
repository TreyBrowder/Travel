//
//  PlaceType.swift
//  TravelApp
//
//  Created by Trey Browder on 1/20/24.
//

import Foundation

enum PlaceType: String, CaseIterable {
    case resturant
    case mall
    case sportingVenue
    case airport
    case unknown
    
    var imageName: String {
        switch self {
        case .resturant:
            return "placeType1"
        case .mall:
            return "placeType2"
        case .sportingVenue:
            return "placeType3"
        case .airport:
            return "placeType4"
        case .unknown:
            return "placeType5"
        }
    }
}
