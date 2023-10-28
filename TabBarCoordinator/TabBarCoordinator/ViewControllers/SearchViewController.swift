//
//  SearchViewController.swift
//  TabBarCoordinator
//
//  Created by Ario Liyan on 8/5/1402 AP.
//

import UIKit

final class SearchViewController: UITabBarController, StoryBoarded {

    weak var coordinator: SearchCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
