//
//  Repository.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 28/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol RepositoryProtocol {
    func getFlights(_ completion: @escaping (FlightsResponse?, Error?) -> Void)
    func getCurrencyExchange(withUrl: String, completion: @escaping (CurrencyResponse?, Error?) -> Void)
}

final class Repository: RepositoryProtocol {
    
    // MARK: - Variables
    private let apiClient: APIClient
    
    // MARK: - Initializer
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    // MARK: - Initializer
    func getFlights(_ completion: @escaping (FlightsResponse?, Error?) -> Void) {
        guard let url = URL(string: Constants.Networking.Url.base_url) else { return }
        
        let resource = Resource(url: url)
        apiClient.load(resource) { (result) in
            
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode(FlightsResponse.self, from: data)
                    completion(items, nil)
                } catch {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
    func getCurrencyExchange(withUrl: String, completion: @escaping (CurrencyResponse?, Error?) -> Void) {
        guard let url = URL(string: withUrl) else { return }
        
        let resource = Resource(url: url)
        apiClient.load(resource) { (result) in
            
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode(CurrencyResponse.self, from: data)
                    completion(items, nil)
                } catch {
                    completion(nil, error)
                }
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
