//
//  GenericResult.swift
//  GameOfThrones
//
//  Created by Enric Pou Villanueva on 28/05/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import Foundation

//enum Results<T> {
//    case success(T)
//    case failure(Error)
//}

enum APIClientError: Error {
    case noData
    case generic
    case invalidUrl
    case errorParsing
}
