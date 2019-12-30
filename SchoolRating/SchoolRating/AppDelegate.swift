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

    var window: UIWindow?
    var loginViewControllerCoordinator: LoginViewControllerCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()
        loginViewControllerCoordinator = LoginViewControllerCoordinator(navigationController: window?.rootViewController as! UINavigationController)
        loginViewControllerCoordinator?.start()
        
        window?.makeKeyAndVisible()
        return true
    }
}

