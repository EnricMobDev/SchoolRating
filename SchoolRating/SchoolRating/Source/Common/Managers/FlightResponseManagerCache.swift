//
//  FligthResponseManager.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

class FlightResponseManagerCache {
    
    static let shared = FlightResponseManagerCache()
    
    var savedFlights: [FlightsResponseModel] = []
    
    func save(flights: [FlightsResponseModel]) {
        self.savedFlights = flights
    }
}
