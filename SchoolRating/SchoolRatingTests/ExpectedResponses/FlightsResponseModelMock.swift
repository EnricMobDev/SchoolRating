//
//  FlightsResponseModelMock.swift
//  SchoolRatingTests
//
//  Created by Enric Pou Villanueva on 08/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation
@testable import SchoolRating

struct FlightsResponseModelMock {
    let flightsResponseModel = [FlightsResponseModel(inboundArrivalDate: "arrivalDate",
                                                     inboundArrivalTime: "arrivalTime",
                                                     inboundDepartureDate: "departureDate",
                                                     inboundDepartureTime: "departureTime",
                                                     inboundDestination: "destination",
                                                     inboundOrigin: "origin",
                                                     outboundArrivalDate: "arrivalDate",
                                                     outboundArrivalTime: "arrivalTime",
                                                     outboundDepartureDate: "departureDate",
                                                     outboundDepartureTime: "departureTime",
                                                     outbounddDestination: "destination",
                                                     outboundOrigin: "origin",
                                                     price: "42,00")]
}
