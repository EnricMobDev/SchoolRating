//
//  Coordinator.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

public protocol Coordinator: class {
    var childCoordinators: [Coordinator] { get set }
    init(navigationController:UINavigationController)
    func start()    
}
