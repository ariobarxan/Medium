//
//  ViewController.swift
//  AdvancedCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

class HomeViewController: UIViewController, StoryBoarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func purchaseAction(_ sender: Any) {
        coordinator?.purchase()
    }
    
    
    @IBAction func creatingProfileAction(_ sender: Any) {
    }
}

