//
//  MainCoordinator.swift
//  SimpleCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

final class MainCoordinator: NSObject, Coordinator {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = HomeViewController.instantiate(.Main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
//    func showMissionDetailViewController(forMission mission: Mission) {
//        let vc = MissionDetailsViewController.instantiate(.Main)
//        vc.coordinator = self
//        navigationController.pushViewController(vc, animated: true)
//        vc.setup(forMission: mission)
//
//    }
}
