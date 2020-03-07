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
    private let viewModel: HomeViewModelProtocol
    
    //MARK: - IBOutlet
    @IBOutlet var tableView: UITableView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flights"
        tableView.delegate = self
    }
    
    init(viewModel: HomeViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO: Navigate to detail
    }
}
