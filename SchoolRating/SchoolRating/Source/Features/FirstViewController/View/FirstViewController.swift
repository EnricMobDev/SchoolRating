//
//  FirstViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit


protocol FirstViewControllerDelegate: class {
    func navigateToSecondViewController()
}

class FirstViewController: UIViewController {
    
    weak var delegate: FirstViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First ViewController"
    }
    
    @IBAction func navigateToSecondVC(_ sender: Any) {
        delegate?.navigateToSecondViewController()
    }
    
}
