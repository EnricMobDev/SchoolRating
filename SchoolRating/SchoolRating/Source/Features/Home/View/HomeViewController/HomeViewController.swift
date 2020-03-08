//
//  HomeViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 29/01/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class HomeViewController: BaseViewController {
    
    //MARK: - Variables
    private let viewModel: HomeViewModel
    private let BORDER_WIDTH_ONE : CGFloat = 1.0
    private let CORNERRADIUS: CGFloat = 10
    private var flights: [FlightsResponseModel] = []
    
    //MARK: - IBOutlet
    @IBOutlet var tableView: UITableView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.viewModel.view = self
        navigationController?.setupNavBarIn(viewController: self,
                                            title: "Choose your Flight",
                                            largeTitle: true)
    }
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - HomeBinding
extension HomeViewController: HomeBinding {
    func reloadUI(with data: [FlightsResponseModel]) {
        self.flights = data
        OperationQueue.main.addOperation {
            self.tableView.reloadData()
        }
    }
}

//MARK: - UITableViewDelegate, UITableViewDataSource
extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: OriginAndDestinationTableViewCell.cellIdentifier(),
                                 bundle: nil),
                           forCellReuseIdentifier: OriginAndDestinationTableViewCell.cellIdentifier())

        guard let cell = tableView.dequeueReusableCell(withIdentifier: OriginAndDestinationTableViewCell.cellIdentifier(), for: indexPath) as? OriginAndDestinationTableViewCell
        else {
            fatalError("DequeueReusableCell failed while casting")
        }

        draw(cell: cell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let flight = flights[indexPath.row]
        viewModel.goToDetailVCWith(flight: flight)
    }
    
    
    //MARK: - Drawing cells
    private func draw(cell: OriginAndDestinationTableViewCell, indexPath: IndexPath) {
        cell.inboundLabel.text = self.flights[indexPath.row].inboundOrigin
        cell.outboundLabel.text = self.flights[indexPath.row].outboundOrigin
        cell.priceLabel.text = self.flights[indexPath.row].price

        cell.containerView.layer.cornerRadius = CORNERRADIUS
        cell.containerView.layer.borderWidth = BORDER_WIDTH_ONE
        cell.containerView.layer.borderColor = R.color.customIron()?.cgColor
    }
}
