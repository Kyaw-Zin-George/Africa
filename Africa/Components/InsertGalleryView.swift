//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/19/25.
//

import SwiftUI

struct InsertGalleryView: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
    }
}

#Preview {
    let animal : [Animal] = Bundle.main.decode("animals.json")
    InsertGalleryView(animal: animal[0])
}
