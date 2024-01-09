//
//  GlobalNavigationStackApp.swift
//  GlobalNavigationStack
//
//  Created by Raghav Deo on 29/12/23.
//

import SwiftUI


enum Route: Hashable {
    case list
    case detail(Movie)
    case reviews([Review])
}

@main
struct GlobalNavigationApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MovieListScreen()
            }.navigationDestination(for: Route.self) { route in
                switch route {
                    case .list:
                        MovieListScreen()
                    case .detail(let movie):
                        MovieDetailScreen(movie: movie)
                    case .reviews(let reviews):
                        ReviewListScreen(reviews: reviews)
                }
            }
        }
    }
}
