//
//  PurchaseCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

final class PurchaseCoordinator: NSObject, Coordinator {
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let vc = PurchaseViewController.instantiate(.Main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func purch() {
        let vc = PurchaseFormViewController.instantiate(.Main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
