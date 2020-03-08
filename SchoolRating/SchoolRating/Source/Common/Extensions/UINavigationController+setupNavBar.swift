//
//  UINavigationController+setupNavBar.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 08/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

extension UINavigationController {
    
    func setupNavBarIn(viewController: UIViewController, title: String, largeTitle: Bool) {
        viewController.navigationController?.navigationBar.isHidden = false
        viewController.navigationController?.navigationBar.prefersLargeTitles = largeTitle
        viewController.navigationItem.title = title
        
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        backButton.tintColor = R.color.customIron()
        backButton.addTarget(self, action: #selector(self.backAction), for: .touchUpInside)

        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
    }
    
    @objc func backAction() {
        self.popViewController(animated: true)
    }
}
