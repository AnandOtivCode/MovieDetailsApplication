import SwiftUI

struct ContentView: View {
    // Decode JSON movie file
    let movies: [Movie] = Bundle.main.decode("AllMovies")
    
    var body: some View {
        NavigationStack {
            //Display number of movies
            Text("Results : " + "\(movies.count)")
                .font(.title3)
                
            
            // Display All Movies Rows
            List(movies) { movie in
                NavigationLink(destination:
                    
                    DetailView(movie: movie)) {
                    RowView(movie: movie)
                }
            }
            //Set the Title for screen
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
