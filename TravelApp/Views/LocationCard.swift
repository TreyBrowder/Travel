//
//  LocationCard.swift
//  TravelApp
//
//  Created by Trey Browder on 1/24/24.
//

import SwiftUI

struct LocationCard: View {
    let model: Location
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: proxy.size.width,
                           height: proxy.size.height,
                           alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            
            VStack{
                Spacer()
                    Text(model.title)
                        .bold()
                        .foregroundColor(.white)
                    .font(.system(size: 32))
            }
        }
    }
}

//#Preview {
//    let model = Location(title: "", imageName: "")
//    LocationCard(model: model)
//}
