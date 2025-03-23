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
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
                .fontWeight(.light)
            Text("Details")
                .font(.title2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.vertical, 10)
            Text("Synopsis : \(movie.longDescription ?? "No Long Description")")
            Divider()
            Text("Buy: $\(String(format: "%.2f", movie.trackPrice ?? 0.00))")
                .foregroundColor(Color(hue: 0.644, saturation: 1.0, brightness: 1.0))
            Text("Rent: $\(String(format: "%.2f", movie.trackRentalPrice ?? 0.00))")
                .foregroundColor(Color(hue: 0.603, saturation: 1.0, brightness: 1.0))
            
            Divider()
            
            
        }
    }
}
    
    #Preview {
        DetailView(movie: Movie.exampleMovie)
    }
    

