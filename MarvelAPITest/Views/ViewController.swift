//
//  ViewController.swift
//  MarvelAPITest
//
//  Created by Stephen Wall on 2/10/20.
//  Copyright © 2020 Stephen Wall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCharacters()
    }
    
    func getCharacters() {
        // Get Characters
        let apiClient = MarvelApiClient(with: MarvelConfig())
        
        apiClient.send(GetCharacters()) { response in
            print("Get Characters Finished!")
            response.map { dataContainer in
                for character in dataContainer.results {
                    print("  Title: \(character.name ?? "Unnamed character")")
                    print("  Thumbnail: \(character.thumbnail?.url.absoluteString ?? "None")")
                }
            }
        }
    }
}

