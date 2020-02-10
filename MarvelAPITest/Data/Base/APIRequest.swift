//
//  APIRequest.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation

protocol APIRequest: Encodable {
    associatedtype Response: Decodable
    /// resourceName is the endpoint of the api, example: /characters, /comics
    var resourceName: String { get }
}
