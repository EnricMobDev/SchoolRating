//
//  LoginViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol LoginViewModelProtocol: class {
    var view: LoginViewController? { get set }
    func didSelect()
    func showFlights()
}

final class LoginViewModel: LoginViewModelProtocol {
    
    // MARK: - Properties
    private let signUpAssembly: CoordinatorProtocol
    private let homeAssembly: CoordinatorProtocol
    weak var view: LoginViewController?

    // MARK: - Initializers
    init(signUpAssembly: CoordinatorProtocol, homeAssembly: CoordinatorProtocol) {
        self.signUpAssembly = signUpAssembly
        self.homeAssembly = homeAssembly
    }

    func didSelect() {
        signUpAssembly.showSignUpViewController()
    }
    
    func showFlights() {
        homeAssembly.showHomeViewController()
    }
}
