//
//  PurchaseViewController.swift
//  AdvancedCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

final class PurchaseViewController: UIViewController, StoryBoarded {
    
    weak var coordinator: PurchaseCoordinator?
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    @IBAction func purchaseFormButtonAction(_ sender: Any) {
        coordinator?.purch()
    }
    
    
    
}

