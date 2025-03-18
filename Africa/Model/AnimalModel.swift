//
//  AnimalModel.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/18/25.
//

import Foundation

struct Animal: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
