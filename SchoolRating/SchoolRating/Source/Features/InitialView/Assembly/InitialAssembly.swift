//
//  LoginAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class InitialAssembly {
    
    // MARK: - Properties
    private let homeAssembly: HomeAssembly
    
    // MARK: - Initializers
    init(homeAssembly: HomeAssembly) {
        self.homeAssembly = homeAssembly
    }
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        return InitialViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> InitialViewModelProtocol {
        return InitialViewModel(homeAssembly: homeAssembly.navigateToHomeViewController())
    }
}
