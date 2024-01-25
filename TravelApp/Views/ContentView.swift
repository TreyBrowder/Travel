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
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea(.all)
                ScrollView {
                    VStack {
                        TextField("Search", text: $searchTerm)
                            .padding(12)
                            .background(Color.gray)
                            .cornerRadius(14)
                            .padding()
                        
                        LocationCarouselView()
                        FilterButtonsView(type: $filterType)
                    }
                }
            }
            .navigationTitle("Travel")
        }
    }
}

#Preview {
    ContentView()
}

