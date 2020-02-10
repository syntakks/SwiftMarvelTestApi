//
//  GetCharacters.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation

struct GetCharacters: APIRequest {
    typealias Response = [ComicCharacter]
    
    var resourceName: String {
        return "characters"
    }
    
    // Paramaters
    let name: String?
    let nameStartsWith: String?
    let limit: Int?
    let offset: Int?
    
    init(name: String? = nil,
         nameStartsWith: String? = nil,
         limit: Int? = nil,
         offset: Int? = nil) {
        self.name = name
        self.nameStartsWith = nameStartsWith
        self.limit = limit
        self.offset = offset
    }
}
