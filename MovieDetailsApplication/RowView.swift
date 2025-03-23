//
//  RowView.swift
//  MovieDetailsApplication
//
//  Created by Anand Otiv on 2025-03-20.
//

import SwiftUI


struct RowView: View {
    var movie: Movie
    var body: some View {
        HStack{
            Image(systemName: "movieclapper.fill")
                .font(.title)
            VStack(alignment: .leading){
//                Text(movie.trackId)
//                    .font(.headline)
                Text(movie.trackName ?? "No Movie Name".uppercased())
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                Text(movie.shortDescription ?? "")
                Text("Genre Name: \(movie.primaryGenreName ?? "No Primary Genre Name")")
                Text("Content Advisory Rating: \(movie.contentAdvisoryRating ?? "No Content Advisory Rating")")
                
                if movie.shortDescription != nil {
                    
                    Text("Movie Description :\(movie.shortDescription ?? "")").font(.footnote).fontWeight(.heavy).multilineTextAlignment(.leading)
                    
                }
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RowView(movie: Movie.exampleMovie)
}

