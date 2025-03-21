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
                    .font(.callout)
                Text(movie.primaryGenreName ?? "No Primary Genre Name").bold()
                Text(movie.longDescription ?? "No Long Description")
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    RowView(movie: Movie.exampleMovie)
}

