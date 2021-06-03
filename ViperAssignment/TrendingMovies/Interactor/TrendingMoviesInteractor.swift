//
//  TrendingMoviesTrendingMoviesInteractor.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import Foundation

class TrendingMoviesInteractor {
    
    weak var output: TrendingMoviesInteractorOutput!

}

extension TrendingMoviesInteractor: TrendingMoviesInteractorInput {
    
    func getTrendingMovies(_ pageNumber: Int) {
        var urlComponents = URLComponents(string: "https://api.themoviedb.org/3/trending/movie/week")
        urlComponents?.queryItems = [
            URLQueryItem(name: "api_key", value: "187c966d5c10e5058a922be1f19aeab3"),
            URLQueryItem(name: "page", value: "\(pageNumber)")
        ]
        
        if let url = urlComponents?.url?.absoluteURL {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    DispatchQueue.global().async { [weak self] in
                        do {
                            if let data = data {
                                let movies = try JSONDecoder().decode(MovieNewsEntity.self, from: data)
                                DispatchQueue.main.async {
                                self?.output.setTrendingMovies(movies.results)
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
