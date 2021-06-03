//
//  MovieDetailsEntity.swift
//  MovieApp
//
//  Created by admin on 19.05.2021.
//

import Foundation

struct MovieDetailsEntity: Decodable {
    var id: Int?
    let originalTitle: String?
    let releaseDate: String?
    let voteAverage: Double
    let backdropPath: String?
    let description: String?
    
    enum CodingKeys: String, CodingKey {
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case voteAverage = "vote_average"
        case backdropPath = "backdropPath"
        case description = "overview"
    }
    
}
