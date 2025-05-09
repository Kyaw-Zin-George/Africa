//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/19/25.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: PROPERTIES
    let animal: Animal
    //MARK: BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                    .padding()
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle.weight(.heavy))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
                    .background{
                        Color.accent
                            .frame(height: 6)
                            .offset(y: 24)
                    }
                //HEADLINE
                Text(animal.headline)
                    .font(.headline.weight(.medium))
                    .foregroundStyle(.accent)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                //GALLERY
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsertGalleryView(animal: animal)
                    
                }.padding()
                ScrollView(.horizontal,showsIndicators: false){
                    
                }
                //FACTS
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    InsertFactView(animal: animal)
                    
                }
                //DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                       
                }
                .padding(.horizontal)
                //MAP
                Group{
                    HeadingView(headingImage: "map", headingText: "National Map Box")
                    InsertMapView()
                }.padding(.horizontal)
                
                //LINK
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    ExternalLinkView(animal: animal)
                }.padding(.horizontal)
            }
        }//Scroll view
        .navigationBarTitle("Learn more about \(animal.name)", displayMode: .inline)
        
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalDetailView(animal: animals[0])
}
