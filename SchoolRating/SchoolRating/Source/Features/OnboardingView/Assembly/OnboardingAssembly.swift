//
//  LoginAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class OnboardingAssembly {
    
    // MARK: - Properties
    private let coordinator: CoordinatorProtocol

    // MARK: - Initializers
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        return OnboardingViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> OnboardingViewModel {
        return OnboardingViewModel(coordinator: coordinator)
    }
}
