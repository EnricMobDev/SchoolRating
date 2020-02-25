//
//  TabBarViewController.swift
//  SchoolRating
//
//  Created by Enric Pou Villanueva on 03/01/2020.
//  Copyright © 2020 Enric Pou Villanueva. All rights reserved.
//

import UIKit

final class TabBarViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //createTabBarItems()
    }
    
    private func createTabBarItems() {
        let firstViewController = HomeViewController()
        
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let secondViewController = DetailViewController()
        
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
//            let tabBarList = [firstViewController, secondViewController]
//            
//            viewControllers = tabBarList
    }
}
