//
//  AddMovieViewController.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddMovieViewController: UIViewController {

    var movieController: MovieController?

    @IBOutlet var movieTextField: UITextField!
    
    @IBAction func addMovieBtnPressed(_ sender: UIButton) {
        
        guard let myMovieName = movieTextField.text, !myMovieName.isEmpty else { return }
        movieController?.createMovie(movieName: myMovieName, seen: false)
//        movieTextField.text = ""
        print(myMovieName, movieController?.movies)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
