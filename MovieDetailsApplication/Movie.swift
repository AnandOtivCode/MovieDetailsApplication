//
//  Movie.swift
//  MovieDetailsApplication
//
//  Created by Anand Otiv on 2025-03-20.
//


import Foundation

struct Movies: Codable{
    var data : [Movie]
}

struct Movie:Codable, Identifiable{






//
//static var exampleCampsite = Campsite(id: "E7CC7363-9C34-42ED-B3F0-769BB39E9400", name: "Anacapa Island Campground", description: "Primitive camping is available (seven sites; $15 per night per site; reservations required). Picnic table, food storage box, and pit toilet are provided. No water is available. Distance from landing to campground is one-half mile and includes a 157-stair climb. WARNING: Western gulls nest on Anacapa Island From April through mid-August. During this time, visitors will encounter seabird rookery conditions: guano, strong odor, constant noise, bird carcasses, and birds protecting their territory.", parkCode: "chis", numberOfSitesReservable: "7", numberOfSitesFirstComeFirstServe: "1")


    static var exampleMovie = Movie(id:"43",trackName: "Thunderstruck", collectionName: "AC/DC Back in Black", artistName: "AC/DC", country: "US", contentAdvisoryRating: "No", primaryGenreName: "Hard Rock", shortDescription: "The title track from the iconic album AC/DC's greatest hit, 'Back in Black'.")


    var id:String
    var trackName: String
    var collectionName: String
    var artistName: String
    var country: String
    var contentAdvisoryRating: String
    var primaryGenreName: String
    var shortDescription:String
    

    
    
}

extension Bundle{
func decode(_ file: String) -> [Movie]{
    guard let url = self.url(forResource: file, withExtension: nil) else {
        fatalError("Can't locate this file")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can't convert the url to data")
    }
    guard let movies = try? JSONDecoder().decode(Movies.self, from: data) else {
        fatalError("Can't decode - problem with keys and properties or values")
    }
    
    return movies.data
}
}

