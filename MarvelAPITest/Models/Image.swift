//
//  Image.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation

struct Image: Decodable {
    enum ImageKeys: String, CodingKey {
        case path = "path"
        case fileExtension = "extension"
    }

    let url: URL

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ImageKeys.self)

        let path = try container.decode(String.self, forKey: .path)
        let fileExtension = try container.decode(String.self, forKey: .fileExtension)

        guard let url = URL(string: "\(path).\(fileExtension)") else { throw MarvelError.decoding }

        self.url = url
    }
}
