//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Shahriar Robin on 3/1/23.
//

import Foundation
///JSON's are dictionary types of structure, which holds bunch of info
struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
