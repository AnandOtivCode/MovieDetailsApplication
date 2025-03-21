import SwiftUI

struct ContentView: View {
    // Decode JSON movie file
    let movies: [Movie] = Bundle.main.decode("AllMovies.json")
    
    var body: some View {
        NavigationStack {
            // Display All Movies Rows
            List(movies) { movie in
                NavigationLink(destination:
                    
                    DetailView(movie: movie)) {
                    RowView(movie: movie)
                }
            }
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
