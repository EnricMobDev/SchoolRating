//
//  Constants.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 27/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

struct Constants {
    
    static let header_origin_and_destiny_table = "Choose your Flight"
    static let header_summary_table = "Flight summary"
    static let formatWithTwoDecimals = "%.2f"
    
    struct Networking {
        struct Url {
            static let base_url = "http://odigeo-testios.herokuapp.com/"
            static let dolar_url = "http://jarvisstark.herokuapp.com/currency?from=USD&to=EUR"
            static let yen_url = "http://jarvisstark.herokuapp.com/currency?from=JPY&to=EUR"
            static let pound_url = "http://jarvisstark.herokuapp.com/currency?from=GBP&to=EUR"
        }
    }
}
