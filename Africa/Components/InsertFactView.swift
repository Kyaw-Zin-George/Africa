//
//  InsertFactView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/19/25.
//

import SwiftUI

struct InsertFactView: View {
    let animal: Animal
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148,idealHeight: 168, maxHeight: 180)
        }
    }
}

#Preview {
    let animals : [Animal] = Bundle.main.decode("animals.json")
    InsertFactView(animal: animals[0])
}
