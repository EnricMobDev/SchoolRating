//
//  DetailAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 07/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol DetailControllerProvider {
    func navigateToDetailViewController() -> AppCoordinator
}

final class DetailAssembly {
    
    // MARK: - Properties
    private let coordinator: CoordinatorProtocol
    private let flightSelected: FlightsResponseModel
    
    // MARK: - Initializers
    public init(coordinator: CoordinatorProtocol, flightSelected: FlightsResponseModel) {
        self.coordinator = coordinator
        self.flightSelected = flightSelected
    }
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        DetailViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> DetailViewModel {
        DetailViewModel(flightSelected: flightSelected, coordinator: coordinator)
    }
}
