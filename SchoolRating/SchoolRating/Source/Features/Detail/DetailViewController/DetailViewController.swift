//
//  DetailViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 03/01/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class DetailViewController: BaseViewController {
    
    //MARK: - Variables
    private let viewModel: DetailViewModel
    
    //MARK: - IBoutlets
    @IBOutlet var inboundLabel: UILabel!
    
    @IBOutlet var inboundDepartureDateLabel: UILabel!
    @IBOutlet var inboundDepartureHourLabel: UILabel!
    
    @IBOutlet var inboundArrivalDateLabel: UILabel!
    @IBOutlet var inboundArrivalHourLabel: UILabel!
    
    @IBOutlet var outboundLabel: UILabel!
    
    @IBOutlet var outboundDepartureDateLabel: UILabel!
    @IBOutlet var outboundDepartureHourLabel: UILabel!
    
    @IBOutlet var outboundArrivalDateLabel: UILabel!
    @IBOutlet var outboundArrivalHourLabel: UILabel!
    
    @IBOutlet var priceLabel: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setupNavBarIn(viewController: self,
                                            title: "Flight Summary",
                                            largeTitle: false)
        self.viewModel.view = self
    }
    
    // MARK: - Initializers
    init(viewModel: DetailViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - DetailBinding
extension DetailViewController: DetailBinding {
    func reloadUI(with data: FlightsResponseModel) {
        inboundLabel.text = data.inboundOrigin
        
        inboundDepartureDateLabel.text = data.inboundDepartureDate
        inboundDepartureHourLabel.text = data.inboundDepartureTime
            
        inboundArrivalDateLabel.text = data.inboundArrivalDate
        inboundArrivalHourLabel.text = data.inboundArrivalTime
            
        outboundLabel.text = data.outboundOrigin
            
        outboundDepartureDateLabel.text = data.outboundDepartureDate
        outboundDepartureHourLabel.text = data.outboundDepartureTime
            
        outboundArrivalDateLabel.text = data.outboundArrivalDate
        outboundArrivalHourLabel.text = data.outboundArrivalTime
            
        priceLabel.text = data.price
    }
}
