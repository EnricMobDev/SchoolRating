//
//  FligthResponseModel.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 30/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

struct FlightsResponseModel {
    
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
    
    init(inboundArrivalDate: String?, inboundArrivalTime: String?, inboundDepartureDate: String?, inboundDepartureTime: String?, inboundDestination: String?, inboundOrigin: String?, outboundArrivalDate: String?, outboundArrivalTime: String?, outboundDepartureDate: String?, outboundDepartureTime: String?, outbounddDestination: String?, outboundOrigin: String?, price: String?) {
        
        self.inboundArrivalDate = inboundArrivalDate
        self.inboundArrivalTime = inboundArrivalTime
        self.inboundDepartureDate = inboundDepartureDate
        self.inboundDepartureTime = inboundDepartureTime
        self.inboundDestination = inboundDestination
        self.inboundOrigin = inboundOrigin
        self.outboundArrivalDate = outboundArrivalDate
        self.outboundArrivalTime = outboundArrivalTime
        self.outboundDepartureDate = outboundDepartureDate
        self.outboundDepartureTime = outboundDepartureTime
        self.outbounddDestination = outbounddDestination
        self.outboundOrigin = outboundOrigin
        self.price = price
    }
}

