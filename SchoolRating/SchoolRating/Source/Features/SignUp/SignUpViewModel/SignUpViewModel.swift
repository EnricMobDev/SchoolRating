//
//  SignUpViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol SignUpViewModelProtocol: class {
    var view: SignUpViewController? { get set }
}

class SignUpViewModel: SignUpViewModelProtocol {
    
    //MARK: - Variables
    var view: SignUpViewController?
    
    //MARK: - Lifecycle
    init() {}
}
