//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import SwiftUI

struct MapAnnotationView: View {
    var location: NationalParkLocation
    @State private var animation: Double = 0.0
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54, alignment: .center)
            Circle()
                .fill(Color.accentColor)
                .frame(width: 52, height: 52,alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
           
        }
        .onAppear{
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}

#Preview {
    var location : [NationalParkLocation] = Bundle.main.decode("locations.json")
    MapAnnotationView(location: location[0])
}
