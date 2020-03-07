//
//  OriginAndDestinationTableViewCell.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

class OriginAndDestinationTableViewCell: UITableViewCell, GetCellIdentifierProtocol {

    //MARK: - IBOutlets
    @IBOutlet var departureImageView: UIImageView!
    @IBOutlet var arrivalImageView: UIImageView!
    
    @IBOutlet var inboundLabel: UILabel!
    @IBOutlet var outboundLabel: UILabel!
    @IBOutlet var fromLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var containerView: UIView!
    
    override func draw(_ rect: CGRect) {
        departureImageView.image = R.image.departures()
        arrivalImageView.image = R.image.arrivals()
    }
}
