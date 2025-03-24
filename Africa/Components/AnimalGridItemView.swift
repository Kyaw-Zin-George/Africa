//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/24/25.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[0])
}
