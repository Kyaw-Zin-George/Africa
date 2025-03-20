//
//  ExternalLinkView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import SwiftUI

struct ExternalLinkView: View {
    let animal: Animal
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikepedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://www.wikepedia.org"))!)
                }
            }
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    ExternalLinkView(animal: animals[0])
}
