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
                Text(movie.id)
                    .font(.headline)
                Text(movie.trackName.uppercased())
                    .font(.callout)
                Text(movie.primaryGenreName).bold()
                Text(movie.shortDescription)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RowView(movie: Movie.exampleMovie)
}

