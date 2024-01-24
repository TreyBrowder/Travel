//
//  Location.swift
//  TravelApp
//
//  Created by Trey Browder on 1/20/24.
//

import Foundation

class Location: ObservableObject, Identifiable {
    
    var id = UUID()
    var title: String
    var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
