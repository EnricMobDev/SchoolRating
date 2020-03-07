//
//  HomeAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 07/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol HomeViewControllerProvider {
    func navigateToHomeViewController() -> AppCoordinator
}

final class HomeAssembly {
    
    // MARK: - Properties
    private let navigationController: UINavigationController
    
    // MARK: - Initializers
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        return HomeViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> HomeViewModelProtocol {
        return HomeViewModel()
    }
}

//MARK: - HomeViewControllerProvider
extension HomeAssembly: HomeViewControllerProvider {
    func navigateToHomeViewController() -> AppCoordinator {
        return AppCoordinator(navigationController: navigationController)
    }
}
