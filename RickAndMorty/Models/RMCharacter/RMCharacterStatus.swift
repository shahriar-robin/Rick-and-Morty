//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Shahriar Robin on 4/1/23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    //'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "Unknown"
}
