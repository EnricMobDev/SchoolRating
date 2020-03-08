//
//  SnapshotTest.swift
//  SchoolRatingTests
//
//  Created by Enric Pou Villanueva on 08/03/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import XCTest
import SnapshotTesting
@testable import SchoolRating

class SnapshotTest: XCTestCase {
    
    var onboardingViewController: OnboardingViewController!
    var homeViewController: HomeViewController!
    var detailViewController: DetailViewController!
    
    override func setUp() {
        onboardingViewController = OnboardingViewController(viewModel: OnboardingViewModel(coordinator: AppCoordinator()))
        
        homeViewController = HomeViewController(viewModel: HomeViewModel(coordinator: AppCoordinator(), interactor: HomeViewControllerInteractor(repository: Repository(apiClient: APIClient()))))
        
        detailViewController = DetailViewController(viewModel: DetailViewModel(flightSelected: FlightsResponseModel(), coordinator: AppCoordinator()))
    }
    
    override func tearDown() {}
    
    func testOnboardingViewController() {
        assertSnapshot(matching: onboardingViewController, as: .image)
    }
    
    func testHomeViewController() {
        assertSnapshot(matching: homeViewController, as: .image)
    }
    
    func testDetailViewController() {
        assertSnapshot(matching: detailViewController, as: .image)
    }
}
