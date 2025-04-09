//
//  CustomModifier.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 4/9/25.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
