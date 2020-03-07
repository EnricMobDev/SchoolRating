//
//  OriginAndDestinationTableViewCell.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

class OriginAndDestinationTableViewCell: UITableViewCell, GetCellIdentifierProtocol {

    @IBOutlet var inboundLabel: UILabel!
    @IBOutlet var outboundLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var containerView: UIView!
}
