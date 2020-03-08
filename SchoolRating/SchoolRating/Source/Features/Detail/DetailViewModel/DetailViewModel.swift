//
//  DetailViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol DetailBinding: class {
    func reloadUI(with data: FlightsResponseModel)
}

class DetailViewModel {
    
    // MARK: - Properties
    private let coordinator: CoordinatorProtocol
    private let flightSelected: FlightsResponseModel
    weak var view: DetailBinding? { didSet { self.view?.reloadUI(with: flightSelected) }}

    // MARK: - Initializers
    init(flightSelected: FlightsResponseModel, coordinator: CoordinatorProtocol) {
        self.flightSelected = flightSelected
        self.coordinator = coordinator
    }
}
