//
//  HomeAssembly.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 07/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class HomeAssembly {
    
    // MARK: - Properties
    private let coordinator: CoordinatorProtocol
    
    // MARK: - Initializers
    public init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    // MARK: - Public Methods
    public func viewController() -> UIViewController {
        HomeViewController(viewModel: viewModel())
    }
    
    // MARK: - Internal Methods
    private func viewModel() -> HomeViewModel {
        let apiClient = APIClient()
        let repository = Repository(apiClient: apiClient)
        let interactor = HomeViewControllerInteractor(repository: repository)
        return HomeViewModel(coordinator: coordinator, interactor: interactor)
    }
}
