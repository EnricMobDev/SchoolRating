//
//  LoginViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation

protocol InitialViewModelProtocol: class {
    var view: InitialViewController? { get set }
    func showFlights()
}

final class InitialViewModel: InitialViewModelProtocol {
    
    // MARK: - Properties
    private let homeAssembly: CoordinatorProtocol
    weak var view: InitialViewController?

    // MARK: - Initializers
    init(homeAssembly: CoordinatorProtocol) {
        self.homeAssembly = homeAssembly
    }

    // MARK: - Navigate funcs
    func showFlights() {
        homeAssembly.showHomeViewController()
    }
}
