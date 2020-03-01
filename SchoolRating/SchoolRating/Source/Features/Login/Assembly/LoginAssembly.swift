//
//  LoginAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class LoginAssembly {
    
    // MARK: - Properties
    
    // MARK: - Initializers
    init(){}
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        return LoginViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> LoginViewModelProtocol {
        return LoginViewModel()
    }
}
