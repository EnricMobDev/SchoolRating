//
//  RepositoryProtocolMock.swift
//  SchoolRatingTests
//
//  Created by Enric Pou Villanueva on 08/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation
@testable import SchoolRating

class RepositoryMock: RepositoryProtocol {
    func fetch<T: Codable>(endpoint: Endpoints, _ completion: @escaping (Result<T, APIClientError>) -> Void) {
        switch endpoint {
        case .dollar:
            completion(.success(CurrencyResponse(currency: "EUR", exchangeRate: 1) as! T))
        case .yen:
            completion(.success(CurrencyResponse(currency: "EUR", exchangeRate: 2) as! T))
        case .pound:
            completion(.success(CurrencyResponse(currency: "EUR", exchangeRate: 3) as! T))
        case .flights:
            let bound = Bound(airline: "airline", airlineImage: "airlineImage", arrivalDate: "arrivalDate", arrivalTime: "arrivalTime", departureDate: "departureDate", departureTime: "departureTime", destination: "destination", origin: "origin")
            let flight = Flight(inbound: bound, outbound: bound, price: 42, currency: .eur)
            let response = FlightsResponse(flights: [flight])
            completion(.success(response as! T))
        }
    }
}

