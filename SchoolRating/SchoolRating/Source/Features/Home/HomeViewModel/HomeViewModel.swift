//
//  HomeViewModel.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/02/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol HomeViewModelProtocol: class {
    var view: HomeViewController? { get set }
}

final class HomeViewModel: NSObject, HomeViewModelProtocol {
    
    //MARK: - Variables
    weak var view: HomeViewController?
    private var listOfFlights: [FlightsResponseModel] = []
    
    //MARK: - Lifecycle
    override init() {
        super.init()
        view?.tableView.dataSource = self
        let flights = HomeViewControllerInteractor()
        flights.getAllFlights()
    }
}

//MARK: - FetchFlightsProtocol
extension HomeViewModel: FetchFlightsProtocol {
    
    func listOf(flights: [FlightsResponseModel]) {
        self.listOfFlights = flights
    }
}

//MARK: - UITableViewDataSource
extension HomeViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listOfFlights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       return UITableViewCell()
    }
}
