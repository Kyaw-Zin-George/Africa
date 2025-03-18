//
//  ContentView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/17/25.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals){ animal in
                AnimalListItemView(animal: animal)
                }
            }//List
            .navigationBarTitle("Africa", displayMode: .large)
        }
    }
}

#Preview {
    ContentView()
}
