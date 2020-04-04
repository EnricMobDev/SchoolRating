//
//  AppCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 25/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol CoordinatorProtocol {
    func showHomeViewController()
    func showDetailViewController(flightSelected: FlightsResponseModel)
}

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Properties
    var navigationController = UINavigationController()
    var window = UIWindow(frame: UIScreen.main.bounds)
    
    // MARK: - Initializers
    init(){}
    
    // MARK: - Navigate Functions
    func start() {
        let initialViewController = showOnboardingViewController()
        navigationController.pushViewController(initialViewController,
                                                            animated: false)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    func showOnboardingViewController() -> UIViewController {
        let onboardingAssembly = OnboardingAssembly(coordinator: self)
        return onboardingAssembly.viewController()
    }
    
    func showHomeViewController() {
        let homeAssembly = HomeAssembly(coordinator: self)
        let homeViewController = homeAssembly.viewController()
        navigationController.pushViewController(homeViewController, animated: true)
    }
    
    func showDetailViewController(flightSelected: FlightsResponseModel) {
        let detailViewModel = DetailViewModel(flightSelected: flightSelected, coordinator: self)
        let detailViewController = DetailViewController(viewModel: detailViewModel)
        detailViewController.coordinator = self
        navigationController.pushViewController(detailViewController, animated: true)
    }
}

