//
//  Coordinator.swift
//  TabBarCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

enum StoryBoardName: String {
    case Main
    
    fileprivate var instance: UIStoryboard {
        return UIStoryboard(name: rawValue, bundle: Bundle.main)
    }
}

protocol StoryBoarded {
    static func instantiate(_ storyBoardName: StoryBoardName) -> Self
}

extension StoryBoarded where Self: UIViewController {
    
    static func instantiate(_ storyBoardName: StoryBoardName) -> Self {
        let storyboard = storyBoardName.instance
        let viewController = storyboard.instantiateViewController(withIdentifier: self.identifier) as! Self
        return viewController
    }
}

protocol Coordinator: NSObject {
    var childCoordinators: [Coordinator] {get set}
    var navigationController: UINavigationController {get set}
        
    func start()
}

