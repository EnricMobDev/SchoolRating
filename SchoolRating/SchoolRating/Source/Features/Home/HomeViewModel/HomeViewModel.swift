//
//  HomeViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol HomeBinding: class {
    func reloadUI(with data: [FlightsResponseModel])
}

final class HomeViewModel {
    
    //MARK: - Variables
    weak var view: HomeBinding?
    
    private var listOfFlights: [FlightsResponseModel] = []
    private var interactor: HomeViewControllerInteractor
    private let coordinator: CoordinatorProtocol

    //MARK: - Lifecycle
    init(coordinator: CoordinatorProtocol, interactor: HomeViewControllerInteractor) {
        self.coordinator = coordinator
        self.interactor = interactor
        fetchAllFlights()
    }
    
    //MARK: - Private func
    private func fetchAllFlights() {
        interactor.delegate = self
        interactor.getAllFlights()
    }
    
    func goToDetailVCWith(flight: FlightsResponseModel) {
        coordinator.showDetailViewController(flightSelected: flight)
    }
}

//MARK: - FetchFlightsProtocol
extension HomeViewModel: FetchFlightsProtocol {
    func listOf(fligths: [FlightsResponseModel]) {
        self.view?.reloadUI(with: fligths)
    }
}
