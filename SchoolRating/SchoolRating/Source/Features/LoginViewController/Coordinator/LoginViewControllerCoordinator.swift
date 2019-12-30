//
//  FirstCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class LoginViewControllerCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstVC = LoginViewController()
        firstVC.delegate = self
        navigationController.viewControllers = [firstVC]
    }
}

extension LoginViewControllerCoordinator: LoginViewControllerDelegate {
    
    func navigateToSignUpViewController() {
        let signUpViewController = SignUpCoordinator(navigationController: navigationController)
        childCoordinators.append(signUpViewController)
        signUpViewController.start()
    }
    
    func navigateToSignInViewController() {
        let homeViewController = HomeCoordinator(navigationController: navigationController)
        childCoordinators.append(homeViewController)
        homeViewController.start()
    }
    
}
