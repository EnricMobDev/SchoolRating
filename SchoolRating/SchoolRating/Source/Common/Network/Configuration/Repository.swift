//
//  Repository.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 28/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol RepositoryProtocol {
    func fetch<T: Codable>(endpoint: Endpoints, _ completion: @escaping (Result<T, APIClientError>) -> Void)
}

enum Endpoints: String {
    case dollar = "http://jarvisstark.herokuapp.com/currency?from=USD&to=EUR"
    case yen = "http://jarvisstark.herokuapp.com/currency?from=JPY&to=EUR"
    case pound = "http://jarvisstark.herokuapp.com/currency?from=GBP&to=EUR"
    case flights = "http://odigeo-testios.herokuapp.com/"
}

final class Repository: RepositoryProtocol {
    
    // MARK: - Variables
    private let apiClient: APIClient
    
    // MARK: - Initializer
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    // MARK: - Fetch Flights
    func fetch<T: Codable>(endpoint: Endpoints, _ completion: @escaping (Result<T, APIClientError>) -> Void) {
        guard let url = URL(string: endpoint.rawValue)
            else { completion(.failure(APIClientError.noData)); return }

        let resource = Resource(url: url)
        apiClient.load(resource) { (result) in
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(items))
                } catch {
                    completion(.failure(.errorParsing))
                }
            case .failure:
                completion(.failure(.noData))
            }
        }
    }
}
