//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Shahriar Robin on 3/1/23.
//

import Foundation

struct RMCharacter: Codable {
    // MARK: - Welcome
    let id: Int
    let name: String
    let status: RMCharacterStatus.RawValue
    let species: String
    let type: String
    let gender: RMCharacterGender.RawValue
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
