//
//  MovieTableViewCell.swift
//  Movie List
//
//  Created by Alex on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var sendBtn: UIButton!
    @IBOutlet var movieNameLbl: UILabel!
    @IBAction func seenBtnPressed(_ sender: UIButton) {
        if sendBtn.title(for: .normal) == "Seen" {
            sendBtn.setTitle("Unseen", for: .normal)
        } else {
            sendBtn.setTitle("Seen", for: .normal)
        }
    }
    
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
