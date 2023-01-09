//
//  RMService.swift
//  RickAndMorty
//
//  Created by Shahriar Robin on 3/1/23.
//

import Foundation

/// Primary API service object to get rick and morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init () {
        
    }
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of objext we expect to get back
    ///   - completion: Callback with data and error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type,
                                    completion: @escaping(Result<T, Error>) -> Void) {
        
    }
}
