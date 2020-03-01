//
//  CoreAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class CoreAssembly {
    
    // MARK: - Properties
    private let navigationController: UINavigationController
    
    // MARK: - Variables
    private(set) lazy var loginAssembly = LoginAssembly()
    
    // MARK: - Initializers
    public init(navigationController: UINavigationController) {

        self.navigationController = navigationController
    }
}
