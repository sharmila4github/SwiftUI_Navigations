//
//  ContentView.swift
//  NavigationSlitViewEx
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI

enum Genre: String, Hashable, CaseIterable {
    case action = "Action"
    case horror = "Horror"
    case fiction = "Fiction"
    case kids = "Kids"
}

struct Movie: Hashable {
    let name: String
    let genre: Genre
}

struct ContentView: View {
    
    @State private var selectedGenre: Genre?
    @State private var selectedMovie: Movie?
    
    let movies = [Movie(name: "Superman", genre: .action), Movie(name: "Karvaa", genre: .horror), Movie(name: "World War Z", genre: .horror), Movie(name: "Home Alone", genre: .kids)]
    
    let columns: [GridItem] = [.init(.fixed(400)), .init(.fixed(400))]
    
    var body: some View {
        NavigationSplitView {
            List(Genre.allCases, id: \.self, selection: $selectedGenre) { genre in
                NavigationLink(genre.rawValue, value: genre)
            }.navigationTitle("Genres")
        } content: {
            
            let filteredMovies = movies.filter { $0.genre == selectedGenre }
            
            List(filteredMovies, id: \.name, selection: $selectedMovie) { movie in
                NavigationLink(movie.name, value: movie)
            }.navigationTitle(selectedGenre?.rawValue ?? "")
            
        }
    detail: {
            Text(selectedMovie?.name ?? "")
                .font(.largeTitle)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
