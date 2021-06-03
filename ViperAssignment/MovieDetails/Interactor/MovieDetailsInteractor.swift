//
//  MovieDetailsMovieDetailsInteractor.swift
//  ViperAssignment
//
//  Created by generamba setup on 02/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import Foundation
class MovieDetailsInteractor{

    weak var output: MovieDetailsInteractorOutput!

}

extension MovieDetailsInteractor: MovieDetailsInteractorInput {
    func getMovieDetails(with id: Int){
        var urlComponents = URLComponents(string: "https://api.themoviedb.org/3/movie")
        urlComponents?.queryItems = [
            URLQueryItem(name: "movie_id", value: "\(id)")
        ]
        
        if let url = urlComponents?.url?.absoluteURL {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    DispatchQueue.global().async { [weak self] in
                        do {
                            if let data = data {
                                let movieDetails = try JSONDecoder().decode(MovieDetailsEntity.self, from: data)
                                DispatchQueue.main.async {
                                }
                                
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
                
            }.resume()
        }
    }

}
