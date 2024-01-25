//
//  FilterButtonsView.swift
//  TravelApp
//
//  Created by Trey Browder on 1/24/24.
//

import Foundation
import SwiftUI

struct FilterButtonsView: View {
    
    @Binding var filterType: PlaceType?
    
    init(type: Binding<PlaceType?>) {
        _filterType = type
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(PlaceType.allCases, id: \.self) { type in
                    let name = type.rawValue.uppercased()
                    
                    Button {
                        filterType = type
                    } label: {
                        Text(name)
                            .bold()
                            .frame(width: 150, height: 75, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.leading, 10)
                    }

                }
            }
        }
    }
}
