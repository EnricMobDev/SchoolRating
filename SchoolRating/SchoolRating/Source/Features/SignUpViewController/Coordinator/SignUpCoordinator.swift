//
//  SecondCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class SignUpCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let signUpViewController = SignUpViewController()
        signUpViewController.delegate = self
        navigationController.viewControllers = [signUpViewController]
    }
}

extension SignUpCoordinator: SignUpViewControllerDelgate {
    func goToFirstViewController() {
        let loginVC = LoginViewControllerCoordinator(navigationController: navigationController)
        childCoordinators.append(loginVC)
        loginVC.start()
    }
}
