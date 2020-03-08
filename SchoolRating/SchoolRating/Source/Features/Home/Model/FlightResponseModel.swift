//
//  FligthResponseModel.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 30/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

struct FlightsResponseModel: Equatable {
    var inboundArrivalDate: String?
    var inboundArrivalTime: String?
    var inboundDepartureDate: String?
    var inboundDepartureTime: String?
    var inboundDestination: String?
    var inboundOrigin: String?
    
    var outboundArrivalDate: String?
    var outboundArrivalTime: String?
    var outboundDepartureDate: String?
    var outboundDepartureTime: String?
    var outbounddDestination: String?
    var outboundOrigin: String?
    
    var price: String?
}

