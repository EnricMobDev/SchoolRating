//
//  TabBarCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 28/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class HomeCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarViewController = HomeViewController()
        navigationController.viewControllers = [tabBarViewController]
    }
}
