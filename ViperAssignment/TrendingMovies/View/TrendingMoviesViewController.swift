//
//  TrendingMoviesTrendingMoviesViewController.swift
//  ViperAssignment
//
//  Created by generamba setup on 01/06/2021.
//  Copyright © 2021 beka. All rights reserved.
//

import UIKit

class TrendingMoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var output: TrendingMoviesViewOutput!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
        title = "Trending Movies"
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.register(UINib(nibName: MovieCell.identifier, bundle: Bundle(for: MovieCell.self)), forCellReuseIdentifier: MovieCell.identifier)
        output?.getTrendingMovies(pageNumber)
    }
    
    var movies: [MovieNewsEntity.Movie] = [] {
           didSet {
            isLoading = false
            tableView.reloadData()
        }
    }
    private var pageNumber: Int = 1
    private var isLoading: Bool = false


    
   
}

// MARK: TrendingMoviesViewInput
extension TrendingMoviesViewController: TrendingMoviesViewInput {
    
    func setupInitialState() {
    }
    
    func setTrendingMovies(_ movies: [MovieNewsEntity.Movie]) {
        self.movies += movies
    }
    func getController() -> UIViewController {
        return self
    }
}


extension TrendingMoviesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MovieCell.identifier, for: indexPath) as! MovieCell
        
        cell.movie = movies[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieid = movies[indexPath.row].id
        output?.openMovieDetails(with: movieid)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let currentOffset = scrollView.contentOffset.y
        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
        let deltaOffset = maximumOffset - currentOffset
        
        if deltaOffset <= 10 && currentOffset > 200 && !isLoading {
            isLoading = true
            pageNumber += 1
        }
        output?.getTrendingMovies(pageNumber)
    }
}
