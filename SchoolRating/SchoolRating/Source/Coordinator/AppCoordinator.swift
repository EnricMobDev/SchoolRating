//
//  AppCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 25/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

///Example of coordinator pattern

protocol CoordinatorProtocol {
    var childCoordinators: [CoordinatorProtocol] { get set }
    var navigationController: UINavigationController { get set }    
}

final class AppCoordinator: CoordinatorProtocol {
    var childCoordinators = [CoordinatorProtocol]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
//    func start() {
//        let firstVC = LoginViewController()
//        firstVC.coordinator = self
//        navigationController.pushViewController(firstVC, animated: false)
//    }
    
//    func navigateToSignUpViewController() {
//        let signUpViewController = SignUpViewController()
//        signUpViewController.coordinator = self
//        navigationController.pushViewController(signUpViewController, animated: false)
//    }
//    
//    func navigateToSignInViewController() {
//        let tabBarCoordinator = HomeViewController()
//        tabBarCoordinator.coordinator = self
//        navigationController.pushViewController(tabBarCoordinator, animated: false)
//    }
//    
//    func goToDetailViewcontroller() {
//        let detailVC = DetailViewController()
//        detailVC.coordinator = self
//        navigationController.pushViewController(detailVC, animated: false)
//    }
    
    
}
