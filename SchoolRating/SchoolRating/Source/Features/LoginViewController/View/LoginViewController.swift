//
//  FirstViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit


protocol LoginViewControllerDelegate: class {
    func navigateToSignUpViewController()
    func navigateToSignInViewController()
}

class LoginViewController: UIViewController {
    
    weak var delegate: LoginViewControllerDelegate?
    
    //IBOutlet
    @IBOutlet weak var schoolImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        schoolImage.image = R.image.school()
    }
    
    //Mark: IBActions
    @IBAction func signUp(_ sender: Any) {
        delegate?.navigateToSignUpViewController()
    }
    
    @IBAction func signIn(_ sender: Any) {
        delegate?.navigateToSignInViewController()
    }
}
