//
//  DetailViewCoordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 03/01/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class DetailViewCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let detailViewCoordinator = DetailViewController()
        navigationController.viewControllers = [detailViewCoordinator]
    }
}
