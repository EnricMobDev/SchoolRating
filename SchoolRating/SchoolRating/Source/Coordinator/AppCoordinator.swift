//
//  AppCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 25/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var navigationController: UINavigationController { get set }
    func showSignUpViewController()
    func showHomeViewController()
}

final class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Properties
    var childCoordinators = [CoordinatorProtocol]()
    var navigationController: UINavigationController
    
    // MARK: - Initializers
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Navigate Functions
    func showSignUpViewController() {
        let signUpViewModel = SignUpViewModel()
        let signUpCoordinatorVC = SignUpViewController(viewModel: signUpViewModel)
        signUpCoordinatorVC.coordinator = self
        navigationController.pushViewController(signUpCoordinatorVC, animated: true)
    }
    
    func showHomeViewController() {
        let homeViewModel = HomeViewModel()
        let homeViewController = HomeViewController(viewModel: homeViewModel)
        homeViewController.coordinator = self
        navigationController.pushViewController(homeViewController, animated: true)
    }
}
