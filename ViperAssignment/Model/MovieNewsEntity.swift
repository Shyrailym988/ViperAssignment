//
//  MovieNewsEntity.swift
//  MovieApp
//
//  Created by admin on 22.04.2021.
//

import Foundation

class MovieNewsEntity: Decodable {
    let results: [Movie]
    
    class Movie: Decodable {
        let id: Int
        let originalTitle: String?
        let releaseDate: String?
        let voteAverage: Double
        let posterPath: String?
        
        enum CodingKeys: String, CodingKey {
            case id
            case originalTitle = "original_title"
            case releaseDate = "release_date"
            case voteAverage = "vote_average"
            case posterPath = "poster_path"
        }
        
        }
}
