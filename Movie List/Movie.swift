//
//  Movie.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie: Equatable {
    var movieTitle: String
    var seen: Bool
    
    init(movieTitle: String, seen: Bool = false) {
        self.movieTitle = movieTitle
        self.seen = seen
    }
}
