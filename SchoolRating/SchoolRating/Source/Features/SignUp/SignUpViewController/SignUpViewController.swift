//
//  SecondViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol SignUpViewControllerProvider {
    func navigateToSignUpViewController() -> CoordinatorProtocol
}

class SignUpViewController: BaseViewController {
    
    // MARK: - Properties
     private let viewModel: SignUpViewModelProtocol
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second ViewController"
    }
    
    init(viewModel: SignUpViewModelProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - IBActions
    @IBAction func backToFirstVC(_ sender: Any) {
        //coordinator?.navigateToSignInViewController()
    }
    
}
