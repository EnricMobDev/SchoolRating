//
//  TabBarCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 03/01/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class TabBarCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
        let firstViewController = HomeCoordinator(navigationController: navigationController)
        
        let secondViewController = DetailViewCoordinator(navigationController: navigationController)
        
        childCoordinators.append(firstViewController)
        childCoordinators.append(secondViewController)
//        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
//        childCoordinators = [firstViewController, secondViewController]
        
//        viewControllers = tabBarList
    }
    
    func start() {
        let tabBarViewController = TabBarViewController()
        navigationController.viewControllers = [tabBarViewController]
    }
}
