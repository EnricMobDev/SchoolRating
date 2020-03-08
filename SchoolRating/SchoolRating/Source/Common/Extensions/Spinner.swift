//
//  Spinner.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 08/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func showSpinner() {
        let spinner = UIActivityIndicatorView()
        self.addSubview(spinner)
        spinner.translatesAutoresizingMaskIntoConstraints = false
        spinner.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        spinner.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.bringSubviewToFront(spinner)
        spinner.startAnimating()
        spinner.color = .black
    }
    
    func removeSpinner() {
        self.subviews
            .filter { $0 is UIActivityIndicatorView }
            .forEach { $0.removeFromSuperview() }
    }
}
