//
//  InitialViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 07/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    // MARK: - Properties
    private let viewModel: InitialViewModelProtocol
  
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Initializers
    init(viewModel: InitialViewModelProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - IBActions
//    @IBAction func signUp(_ sender: Any) {
//        viewModel.didSelect()
//    }
//    
//    @IBAction func signIn(_ sender: Any) {
//        viewModel.showFlights()
//    }


}
