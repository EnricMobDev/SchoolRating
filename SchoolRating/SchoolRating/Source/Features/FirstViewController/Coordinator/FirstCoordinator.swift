//
//  FirstCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class FirstCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let firstVC = FirstViewController()
        firstVC.delegate = self
        navigationController.viewControllers = [firstVC]
    }
}

extension FirstCoordinator: FirstViewControllerDelegate {
    func navigateToSecondViewController() {
        let secondViewController = SecondCoordinator(navigationController: navigationController)
        childCoordinators.append(secondViewController)
        secondViewController.start()
    }
}
