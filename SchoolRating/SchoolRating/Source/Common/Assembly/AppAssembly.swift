//
//  AppAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class AppAssembly {
    
    // MARK: - Variables
    private(set) lazy var window = UIWindow(frame: UIScreen.main.bounds)
    private(set) lazy var navigationController: UINavigationController = {
        return UINavigationController()
    }()
    private(set) lazy var coreAssembly = CoreAssembly(navigationController: navigationController)
}
