//
//  MovieController.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieControllerProtocol: AnyObject {
    var movieController: MovieController? { get set }
}


class MovieController {
    var movies: [Movie] = []
    
    func deleteMovie(atIndex index: Int) {
        movies.remove(at: index)
    }
    
    func createMovie(movieName: String, seen: Bool = false) {
        let newMovie = Movie(movieTitle: movieName, seen: seen)
        movies.append(newMovie)
    }
}
