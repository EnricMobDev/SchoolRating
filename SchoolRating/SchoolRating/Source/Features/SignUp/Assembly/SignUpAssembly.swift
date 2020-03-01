//
//  SignUpAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class SignUpAssembly {
    
    // MARK: - Properties
    private let navigationController: UINavigationController
    
    // MARK: - Initializers
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func viewController() -> UIViewController {
        return SignUpViewController(viewModel: viewModel())
    }
    
    func viewModel() -> SignUpViewModelProtocol {
        return SignUpViewModel()
    }
}

// MARK: - SignUpViewControllerProvider
extension SignUpAssembly: SignUpViewControllerProvider {
    
    func navigateToSignUpViewController() -> UIViewController {
        return viewController()
    }
}
