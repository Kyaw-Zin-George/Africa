//
//  CoverImageView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/18/25.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: PROPERTIES
    let coverImages: [CoverImage] =
    Bundle.main.decode("covers.json")
    //MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }//Loop
        }//Tab
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: PREVIEW
#Preview {
    CoverImageView()
}
