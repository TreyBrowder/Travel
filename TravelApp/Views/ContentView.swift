//
//  ContentView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchTerm = ""
    
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
                            .padding()
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
