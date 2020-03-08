//
//  ApiClient.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 28/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

final class APIClient {
    
    func load(_ resource: Resource, result: @escaping ((Result<Data, APIClientError>) -> Void)) {
        let request = URLRequest(resource)
        let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) -> Void in
            
            guard let data = data else {
                result(.failure(APIClientError.noData))
                return
            }
            if let _ = error {
                result(.failure(.generic))
                return
            }
            result(.success(data))
        }
        dataTask.resume()
    }
}

extension URLRequest {
    init(_ resource: Resource) {
        self.init(url: resource.url)
        self.httpMethod = resource.method
    }
}
