//
//  MovieCell.swift
//  MovieApp
//
// Created by admin on 22.04.2021
//

import UIKit

class MovieCell: UITableViewCell {
    
    public static let identifier: String = "MovieCell"

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var labelContainerView: UIView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var relaseDateLabel: UILabel!
    
    public var movie: MovieNewsEntity.Movie? {
        didSet {
            
            if let movie = movie {
                let url = URL(string: "https://image.tmdb.org/t/p/w300\(movie.posterPath ?? "")")
//                                posterImageView.kf.setImage(with: url)
                movieNameLabel.text = movie.originalTitle
                relaseDateLabel.text = movie.releaseDate
                ratingLabel.text = String(movie.voteAverage ?? 0)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        
        posterImageView.layer.cornerRadius = 8
        posterImageView.layer.masksToBounds = true
        
        labelContainerView.layer.cornerRadius = 20
        labelContainerView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
