//
//  MarvelError.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation

enum MarvelError: Error {
    case encoding
    case decoding
    case server(message: String)
}
