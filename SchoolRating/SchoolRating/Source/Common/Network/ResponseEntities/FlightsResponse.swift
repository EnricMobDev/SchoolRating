//
//  FligthsResponse.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

struct FlightsResponse: Codable {
    let flights: [Flight]
    
    enum CodingKeys: String, CodingKey {
        case flights = "results"
    }
}

// MARK: - Result
struct Flight: Codable {
    let inbound, outbound: Bound
    var price: Double
    let currency: Currency
}

enum Currency: String, Codable {
    case eur = "EUR"
    case gbp = "GBP"
    case jpy = "JPY"
    case usd = "USD"
}

// MARK: - Bound
struct Bound: Codable {
    let airline: String
    let airlineImage: String
    let arrivalDate, arrivalTime, departureDate, departureTime: String
    let destination, origin: String
}
