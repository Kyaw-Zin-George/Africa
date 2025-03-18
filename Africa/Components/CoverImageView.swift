//
//  CoverImageView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/18/25.
//

import SwiftUI

struct CoverImageView: View {
    
    //MARK: PROPERTIES
    
    //MARK: BODY
    
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
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
