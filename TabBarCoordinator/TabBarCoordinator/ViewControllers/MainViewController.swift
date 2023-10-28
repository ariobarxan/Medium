//
//  ViewController.swift
//  TabBarCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

final class MainViewController: UIViewController, StoryBoarded {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}

