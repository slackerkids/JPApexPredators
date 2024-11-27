//
//  PredatorDetail.swift
//  JPApexPredators18
//
//  Created by Sagidanov Bakhtiyar on 26.11.2024.
//

import SwiftUI

struct PredatorDetail: View {
    let predator: ApexPredator
    
    var body: some View {
        GeometryReader{ geo in
            ScrollView {
                ZStack(alignment: .bottomTrailing) {
                    // Background Image
                    Image(predator.type.rawValue)
                        .resizable()
                        .scaledToFit()
                    
                    // Dino Image
                    Image(predator.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width/1.5, height: geo.size.height/3)
                        .scaleEffect(x: -1)
                        .shadow(color: .black,radius: 7)
                        .offset(y:20)
                }
                
                // Name
                
                // Current Location
                
                // Appears In
                
                // Movie Moments
                
                // Link to Webpage
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    PredatorDetail(predator: Predators().apexPredators[2])
//        .preferredColorScheme(.dark)
}
