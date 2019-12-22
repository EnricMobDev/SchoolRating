//
//  SecondCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class SecondCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController = SecondViewController()
        secondViewController.delegate = self
        navigationController.viewControllers = [secondViewController]
    }
}

extension SecondCoordinator: SecondViewControllerDelgate {
    func goToFirstViewController() {
        let firstVC = FirstCoordinator(navigationController: navigationController)
        childCoordinators.append(firstVC)
        firstVC.start()
    }
}
