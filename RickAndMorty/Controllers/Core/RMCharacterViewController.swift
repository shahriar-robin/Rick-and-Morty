//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Shahriar Robin on 3/1/23.
//

import UIKit

class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Character"
        view.backgroundColor = .white
        
        let request = RMRequest(endpoint: .character,
                                queryParameters: [URLQueryItem(name: "name", value: "rick"),
                                                  URLQueryItem(name: "status", value: "alive")])
        
        print(request.url)
    }
}
