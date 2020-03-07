//
//  CurrencyResponse.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 29/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

struct CurrencyResponse: Codable {
    let currency: String
    let exchangeRate: Double
}
