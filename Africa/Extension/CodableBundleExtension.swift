//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Kyaw Thant Zin(George) on 3/18/25.
//

import Foundation

extension Bundle{
    func decode(_ file: String) -> [CoverImage]{
        // 1. Locate the JSon file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't find \(file) in bundle")
        }
        //2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fail to load \(file) from the bundle")
        }
        //3. create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Fail to decode \(file) from the bundle")
        }
        //5. return the ready to use  data
        return loaded
    }
}
