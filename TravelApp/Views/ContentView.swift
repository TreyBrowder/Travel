//
//  ContentView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchTerm = ""
    @State var filterType: PlaceType?
    @State var placeModel: [Place] = [
        Place(type: .airport, location: Location(title: "Almafi Coast Airport", imageName: "placeType4"), title: "Almafi Coast Airport", description: "Known for the Southern Italian hopitality and suvenir shops."),
        Place(type: .resturant, location: Location(title: "Tawain", imageName: "placeType1"), title: "Kappo Muroi", description: "Traditional Tawanese cuisine.  Ask about the seasonal dishes!"),
        Place(type: .sportingVenue, location: Location(title: "M&T Bank", imageName: "placeType3"), title: "Grand Canyon", description: "Fans are known as The Flock."),
        Place(type: .mall, location: Location(title: "Tulum", imageName: "placeType2"), title: "Tulum Mall", description: "Family centered environment, known for seasonal changing food court."),
        Place(type: .unknown, location: Location(title: "Japan", imageName: "placeType5"), title: "Scioto Mile", description: "Known for miles of paths that are usually pretty busy during the spring and summer time.")
        
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                    .ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        TextField("Search", text: $searchTerm)
                            .padding(12)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(14)
                            .padding()
                        
                        LocationCarouselView()
                        FilterButtonsView(type: $filterType)
                        
                        VStack {
                            ForEach(placeModel) { place in
                                if searchTerm.isEmpty {
                                    if filterType == nil {
                                        NavigationLink (
                                            destination: Text("placeholder"),
                                            label: {
                                            PlaceCardView(placeModel: place)
                                                .cornerRadius(12)
                                                .padding()
                                        })
                                    }
                                    else if let filterType = self.filterType, filterType == place.type {
                                        NavigationLink (
                                            destination: Text("destination placeholder"),
                                            label: {
                                            PlaceCardView(placeModel: place)
                                                .cornerRadius(12)
                                                .padding()
                                        })
                                    }
                                }
                                else {
                                    if place.title.lowercased().hasPrefix(searchTerm.lowercased()) {
                                        if filterType == nil {
                                            NavigationLink (
                                                destination: Text("destination placeholder"),
                                                label: {
                                                PlaceCardView(placeModel: place)
                                                    .cornerRadius(12)
                                                    .padding()
                                            })
                                        }
                                        else if let filterType = self.filterType,
                                                    filterType == place.type {
                                            NavigationLink (
                                                destination: Text("destination placeholder"),
                                                label: {
                                                PlaceCardView(placeModel: place)
                                                    .cornerRadius(12)
                                                    .padding()
                                            })
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Travel")
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}

