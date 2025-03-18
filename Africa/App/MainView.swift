//
//  MainView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab){
            Tab("Browse",systemImage: "square.grid.2x2",value: 0){
                ContentView()
            }
            Tab("Watch",systemImage: "play.rectangle",value: 1){
                VideoListView()
            }
            Tab("Location",systemImage: "map",value: 2){
                MapView()
            }
            Tab("Gallery", systemImage: "photo",value: 3){
                GalleryView()
            }
                
        }//: Tab View
    }
}

#Preview {
    MainView()
}
