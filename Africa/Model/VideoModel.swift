//
//  VideoModel.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/20/25.
//

import Foundation

struct Video: Codable, Identifiable{
    let id: String
    let name: String
    let headline: String
    //computed property
    var thumbnail: String {
        "video-\(id)"
    }
}



