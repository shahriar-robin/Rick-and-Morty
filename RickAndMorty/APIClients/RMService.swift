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
    
    enum RMServiceError: Error {
        case failedToCreate
        case failedToGetData
    }
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of objext we expect to get back
    ///   - completion: Callback with data and error
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping(Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreate))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion((.failure(error ?? RMServiceError.failedToGetData)))
                print("Data Er theke error")
                return
            }
            
            //Decode response
            do {
//                let json = try JSONSerialization.jsonObject(with: data)
//                print(String(describing: json))
                let result = try JSONDecoder().decode(type.self, from: data)
                completion((.success(result)))
            } catch {
                completion(.failure(error))
                print("Error From Service.")
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
