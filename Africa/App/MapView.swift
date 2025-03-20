//
//  MapView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    var body: some View {
       //MARK: BASIC MAP
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            //1. Pin: OLD STYLE
           // MapPin(coordinate: item.location, tint: .accent)
            
            //2. MARKER NEW STYLE
           // MapMarker(coordinate: item.location, tint: .accentColor)
            
            //3. CUSTOM PIN
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height: 32, alignment: .center)
            }
        }
    }
}

#Preview {
    MapView()
}
