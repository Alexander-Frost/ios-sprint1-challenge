//
//  MoviesTabBarViewController.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MoviesTabBarViewController: UITabBarController {

    let movieController = MovieController()

    func configureChildren() {
        for child in children {
            if let myVC = child as? MovieControllerProtocol {
                myVC.movieController = movieController
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureChildren()
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
