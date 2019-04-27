//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var seenBtn: UIButton!
    
    @IBAction func seenBtnPressed(_ sender: UIButton) {
        if seenBtn.title(for: .normal) == "Seen" {
            seenBtn.setTitle("Unseen", for: .normal)
        } else {
            seenBtn.setTitle("Seen", for: .normal)
        }
    }
    
    @IBOutlet var movieNameLbl: UILabel!
    
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    
    func updateViews() {
        movieNameLbl.text = movie?.movieTitle
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
