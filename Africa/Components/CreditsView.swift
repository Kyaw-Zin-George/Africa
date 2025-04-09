//
//  CreditsView.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 4/9/25.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
   
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Kyaw Zin
    All right reserved
    Better Apps ❤️ Less Code
    """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }//vstack
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    CreditsView()
}
