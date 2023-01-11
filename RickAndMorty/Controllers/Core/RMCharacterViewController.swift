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
        
//        let request = RMRequest(endpoint: .character,
//                                queryParameters: [URLQueryItem(name: "name", value: "rick"),
//                                                  URLQueryItem(name: "status", value: "alive")])
//
//        print(request.url ?? "")
//
//        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
//            switch result {
//            case .success:
//                break
//            case .failure(let error):
//                print(String(describing: error))
//            }
//        }
        
        RMService.shared.execute(.listCharacterRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print("ONK ERROR:",String(describing: error))
            }
        }
    }
}
