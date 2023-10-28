//
//  MainTabBarViewController.swift
//  TabBarCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    let main = MainCoordinator(navigationController: UINavigationController())
    let search = SearchCoordinator(navigationController: UINavigationController())
    let setting = SettingCoordinator(navigationController: UINavigationController())
    let profile = ProfileCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        main.start()
        search.start()
        setting.start()
        profile.start()
        
        viewControllers = [main.navigationController,
                           search.navigationController,
                           setting.navigationController,
                           profile.navigationController]
    }
}
