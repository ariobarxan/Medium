//
//  CoordinatorProtocol.swift
//  AdvancedCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

protocol Coordinator: NSObject {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
        
    func start()
}
