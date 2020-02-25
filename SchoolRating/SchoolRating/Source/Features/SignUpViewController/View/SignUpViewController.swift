//
//  SecondViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

class SignUpViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second ViewController"
    }
    
    @IBAction func backToFirstVC(_ sender: Any) {
        coordinator?.navigateToSignInViewController()
    }
    
}
