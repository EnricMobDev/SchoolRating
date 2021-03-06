//
//  LaunchScreenInteractor.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 31/05/2019.
//  Copyright (c) 2019 Enric Pou Villanueva. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol FetchFlightsProtocol: class {
    func listOf(fligths: [FlightsResponseModel])
}

final class HomeViewControllerInteractor {
    
    // MARK: - Variables
    private var dolarExchange: Double?
    private var yenExchange: Double?
    private var poundExchange: Double?
    weak var delegate: FetchFlightsProtocol?
    
    // MARK: - Constants
    private let dispatchGroup = DispatchGroup()
    private let repository: RepositoryProtocol
    
    init(repository: RepositoryProtocol) {
        self.repository = repository
    }
    
    func getAllFlights() {
        fetchExchangesWith(endpoint: .dollar)
        fetchExchangesWith(endpoint: .yen)
        fetchExchangesWith(endpoint: .pound)
        
        fetchFlights()
    }
    
    // MARK: - Private funcs
    private func fetchExchangesWith(endpoint: Endpoints) {
        
        dispatchGroup.enter()
        repository.fetch(endpoint: endpoint) { [weak self] (result: Result<CurrencyResponse, APIClientError>)   in
            
            guard let self = self else { return }
            
            switch result {
            case let .success(currency):
                switch endpoint {
                case .dollar:
                    self.dolarExchange = currency.exchangeRate
                case .yen:
                    self.yenExchange = currency.exchangeRate
                case .pound:
                     self.poundExchange = currency.exchangeRate
                default:
                    break
                }
            case .failure(_):
                break
            }
            self.dispatchGroup.leave()
        }
    }
    
    private func fetchFlights() {
        dispatchGroup.notify(queue: .main) {
            
            self.repository.fetch(endpoint: .flights) { (result: Result<FlightsResponse, APIClientError>) in
                switch result {
                case let .success(flights):
                    let flightResponseModel = self.bindServiceResponseToOur(model: flights)
                    self.delegate?.listOf(fligths: flightResponseModel)
                case .failure(_):
                    break
                }
            }
        }
    }
    
    private func bindServiceResponseToOur(model: FlightsResponse) -> [FlightsResponseModel] {
        return model.flights.compactMap {
            let currencyExchange = currencyExchangeWith(price: $0.price, currency: $0.currency.rawValue)
            let roundedPrice = rounded(price: currencyExchange)
            
            return FlightsResponseModel(inboundArrivalDate: $0.inbound.arrivalDate,
                                              inboundArrivalTime: $0.inbound.arrivalTime,
                                              inboundDepartureDate: $0.inbound.departureDate,
                                              inboundDepartureTime: $0.inbound.departureTime,
                                              inboundDestination: $0.inbound.destination,
                                              inboundOrigin: $0.inbound.origin,
                                              outboundArrivalDate: $0.outbound.arrivalDate,
                                              outboundArrivalTime: $0.outbound.arrivalTime,
                                              outboundDepartureDate: $0.outbound.departureDate,
                                              outboundDepartureTime: $0.outbound.departureTime,
                                              outbounddDestination: $0.outbound.destination,
                                              outboundOrigin: $0.outbound.origin,
                                              price: roundedPrice)
        }
    }
    
    private func currencyExchangeWith(price: Double, currency: String) -> Double {
        var convertedPrice = 0.0
        
        switch currency {
        case Currency.usd.rawValue:
            guard let dolarExchange = dolarExchange else { return convertedPrice }
            convertedPrice = (price * dolarExchange)
            
        case Currency.jpy.rawValue:
            guard let yenExchange = yenExchange else { return convertedPrice }
            convertedPrice = (price * yenExchange)
            
        case Currency.gbp.rawValue:
            guard let poundExchange = poundExchange else { return convertedPrice }
            convertedPrice = (price * poundExchange)
        case Currency.eur.rawValue:
            convertedPrice = price
        default:
            break
        }
        
        return convertedPrice
    }
    
    private func rounded(price: Double) -> String {
        return String(format: "%.2f",
                      price).replacingOccurrences(of: ".", with: ",")
    }
}
