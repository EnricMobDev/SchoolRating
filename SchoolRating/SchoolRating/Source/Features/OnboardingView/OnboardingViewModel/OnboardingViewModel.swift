//
//  LoginViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation


final class OnboardingViewModel {
    
    // MARK: - Properties
    private let coordinator: CoordinatorProtocol

    // MARK: - Initializers
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }

    // MARK: - Navigate funcs
    func showFlights() {
        coordinator.showHomeViewController()
    }
}
