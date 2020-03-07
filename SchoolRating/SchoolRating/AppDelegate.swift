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
    let appAssembly = AppAssembly()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        //startCoordinator()    
        startAppAssembly()
        return true
        
        
    }
    
    private func startAppAssembly() {
        
        let initialViewController = appAssembly.coreAssembly.loginAssembly.viewController()
        
        appAssembly.navigationController.pushViewController(initialViewController,
                                                            animated: false)
        appAssembly.window.rootViewController = appAssembly.navigationController
        appAssembly.window.makeKeyAndVisible()
    }
}

