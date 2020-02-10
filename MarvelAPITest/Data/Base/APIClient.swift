//
//  APIClient.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 syntaks.io. All rights reserved.
//

import Foundation

typealias ResultCallback<Value> = (Result<Value, Error>) -> Void

protocol APIClient {
    func send<T: APIRequest>(
        _ request: T,
        completion: @escaping ResultCallback<T.Response>
    )
}
