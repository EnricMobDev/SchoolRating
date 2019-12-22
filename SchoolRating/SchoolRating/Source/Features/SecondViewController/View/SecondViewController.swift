//
//  SecondViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelgate: class {
    func goToFirstViewController()
}

class SecondViewController: UIViewController {

    weak var delegate: SecondViewControllerDelgate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second ViewController"
    }
    
    @IBAction func backToFirstVC(_ sender: Any) {
        delegate?.goToFirstViewController()
    }
    
}
