//
//  InitialViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 07/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

class OnboardingViewController: BaseViewController {
    
    // MARK: - Properties
    private let viewModel: OnboardingViewModel
  
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Initializers
    init(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - IBActions
    @IBAction func chooseYourFlight(_ sender: Any) {
        viewModel.showFlights()
    }
}
