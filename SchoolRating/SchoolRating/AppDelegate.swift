//
//  AppDelegate.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 22/12/2019.
//  Copyright © 2019 Enric Pou Villanueva. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Properties
    var window: UIWindow?
    let coordinator = AppCoordinator()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        coordinator.start()
        return true
    }
}

