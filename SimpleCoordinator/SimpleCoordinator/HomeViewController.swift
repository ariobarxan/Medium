//
//  ViewController.swift
//  SimpleCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

class HomeViewController: UIViewController, StoryBoarded {

    weak var coordinator: Coordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func purchaseAction(_ sender: Any) {
        print("Purchase")
    }
    
}

