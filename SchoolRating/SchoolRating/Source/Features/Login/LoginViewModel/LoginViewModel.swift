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
}

class LoginViewModel: LoginViewModelProtocol {
    
    //MARK: - Variables
    var view: LoginViewController?
    
    init() {}
}
