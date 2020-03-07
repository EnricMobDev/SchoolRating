//
//  FirstViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class LoginViewController: BaseViewController {
        
    // MARK: - Properties
    private let viewModel: LoginViewModelProtocol
    
    // MARK: - IBOutlets
    @IBOutlet weak var schoolImage: UIImageView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Initializers
    init(viewModel: LoginViewModelProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - IBActions
    @IBAction func signUp(_ sender: Any) {
        viewModel.didSelect()
    }
    
    @IBAction func signIn(_ sender: Any) {
        viewModel.showFlights()
    }
}
