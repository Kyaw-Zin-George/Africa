//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/18/25.
//

import SwiftUI

struct AnimalListItemView: View {
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8){
                Text(animal.name)
                    .font(.title2.weight(.heavy))
                    .foregroundStyle(.accent)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalListItemView(animal: animals[1])
        .padding()
}
