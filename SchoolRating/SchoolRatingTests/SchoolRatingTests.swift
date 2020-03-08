//
//  SchoolRatingTests.swift
//  SchoolRatingTests
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//
import XCTest
@testable import SchoolRating

class SchoolRatingTests: XCTestCase {

    var viewController: HomeViewControllerInteractor!
    var flightsResponseModelMock: FlightsResponseModelMock!
    var result: [FlightsResponseModel]?
    var expectation: XCTestExpectation?
    
    override func setUp() {
        viewController = HomeViewControllerInteractor(repository:  RepositoryMock())
        viewController.delegate = self
        flightsResponseModelMock = FlightsResponseModelMock()
    }

    override func tearDown() {}
    
    func testFlights() {
        expectation = self.expectation(description: "flights expectation")
        viewController.getAllFlights()
        wait(for: [expectation!], timeout: 5)
        
        XCTAssertEqual(flightsResponseModelMock.flightsResponseModel, result)
    }
}

extension SchoolRatingTests: FetchFlightsProtocol {
    func listOf(fligths: [FlightsResponseModel]) {
        self.result = fligths
        expectation?.fulfill()
    }
}
