//
//  FligthsResponse.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

struct FlightsResponse: Codable {
    let results: [Flights]
}

// MARK: - Result
struct Flights: Codable {
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
    let airline: Airline
    let airlineImage: String
    let arrivalDate, arrivalTime, departureDate, departureTime: String
    let destination, origin: Destination
}

enum Airline: String, Codable {
    case archonei = "Archonei"
    case balerion = "Balerion"
    case drogon = "Drogon"
    case essovius = "Essovius"
    case ghiscar = "Ghiscar"
    case meraxes = "Meraxes"
    case rhaegal = "Rhaegal"
    case sunfyre = "Sunfyre"
    case valryon = "Valryon"
    case vermithrax = "Vermithrax"
    case vhagar = "Vhagar"
    case viserion = "Viserion"
}

enum Destination: String, Codable {
    case arNoy = "Ar Noy"
    case asshai = "Asshai"
    case astapor = "Astapor"
    case bayasabhad = "Bayasabhad"
    case bhorash = "Bhorash"
    case braavos = "Braavos"
    case chroyane = "Chroyane"
    case elyria = "Elyria"
    case freeCities = "Free Cities"
    case gulltown = "Gulltown"
    case kingSLanding = "King's Landing"
    case lannisport = "Lannisport"
    case lorath = "Lorath"
    case lys = "Lys"
    case mantarys = "Mantarys"
    case meereen = "Meereen"
    case myr = "Myr"
    case newGhis = "New Ghis"
    case norvos = "Norvos"
    case nySar = "Ny Sar"
    case oldGhis = "Old Ghis"
    case oldValyria = "Old Valyria"
    case oldtown = "Oldtown"
    case oros = "Oros"
    case pentos = "Pentos"
    case qarth = "Qarth"
    case qohor = "Qohor"
    case samyrian = "Samyrian"
    case sarMell = "Sar Mell"
    case sunspear = "Sunspear"
    case tolos = "Tolos"
    case tyria = "Tyria"
    case tyrosh = "Tyrosh"
    case vaesDothrak = "Vaes Dothrak"
    case volantis = "Volantis"
    case whiteHarbor = "White Harbor"
    case yunkai = "Yunkai"
}
