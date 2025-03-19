//
//  HeadingView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/19/25.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String
    var headingText: String
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Welcome to Africa")
}
