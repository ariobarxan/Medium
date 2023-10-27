//
//  MainCoordinator.swift
//  AdvancedCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//
import UIKit

final class MainCoordinator: NSObject, Coordinator {
    
    var navigationController: UINavigationController
    var childCoordinators  = [Coordinator]()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.delegate = self
        let vc = HomeViewController.instantiate(.Main)
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func purchase() {
        let child = PurchaseCoordinator(navigationController: navigationController)
        childCoordinators.append(child)
        child.start()
    }
    
    
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
}

// MARK: - UINavigationControllerDelegate
extension MainCoordinator: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        //handle popping the child coordinators from here
        guard let sourceViewController = navigationController.transitionCoordinator?.viewController(forKey: .from) else {
            return
        }

        if navigationController.viewControllers.contains(sourceViewController) {
            return
        }

        if let vc = sourceViewController as? PurchaseViewController {
            childDidFinish(vc.coordinator)
        }
    }
}

