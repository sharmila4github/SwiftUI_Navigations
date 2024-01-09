import SwiftUI

struct Movie: Hashable {
    let name: String
}

struct Review: Hashable {
    let text: String
}


struct MovieDetailScreen: View {
    
    let movie: Movie
    
    var body: some View {
        VStack {
            Text(movie.name)
                .font(.largeTitle)
            NavigationLink("Reviews", value: Route.reviews([Review(text: "Good movie!")]))
        }
    }
}

struct ReviewListScreen: View {
    
    let reviews: [Review]
    
    var body: some View {
        List(reviews, id: \.text) { review in
            Text(review.text)
        }
    }
    
}

struct MovieListScreen: View {
    
    let movies = [Movie(name: "Spiderman"), Movie(name: "Batman")]
    
    var body: some View {
        List(movies, id: \.name) { movie in
            NavigationLink(movie.name, value: Route.detail(movie))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MovieListScreen()
                .navigationDestination(for: Route.self) { route in
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
