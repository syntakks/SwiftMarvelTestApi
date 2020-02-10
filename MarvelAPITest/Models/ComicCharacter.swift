//
//  ComicCharacter.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation
struct ComicCharacter: Decodable {
    let id: Int
    let name: String?
    let description: String?
    let thumbnail: Image?
}
