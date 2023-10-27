//
//  CoordinatorProtocol.swift
//  SimpleCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

protocol Coordinator: NSObject {
    var navigationController: UINavigationController {get set}
        
    func start()
}
