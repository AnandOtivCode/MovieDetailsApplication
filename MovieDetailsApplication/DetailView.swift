//
//  DetailView.swift
//  CampingApp
//
//  Created by Christopher Takaki on 2025-03-17.
//

import SwiftUI

struct DetailView: View {
    var movie: Movie
    var body: some View {
        VStack{
            Text(movie.trackName ?? "No Movie Name")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
                .fontWeight(.light)
            Text("Details")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 10)
            Text(movie.longDescription ?? "No Long Description")
            Divider()
            
        }
    }
}
    
    #Preview {
        DetailView(movie: Movie.exampleMovie)
    }

