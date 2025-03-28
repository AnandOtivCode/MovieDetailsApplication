//
//  Movie.swift
//  MovieDetailsApplication
//
//  Created by Anand Otiv on 2025-03-20.
//

//Class for decoding and reading JSON movie file and putting into Movie
import Foundation

struct Movies: Codable{
    var results : [Movie]
}

struct Movie:Codable, Identifiable{






//
//static var exampleCampsite = Campsite(id: "E7CC7363-9C34-42ED-B3F0-769BB39E9400", name: "Anacapa Island Campground", description: "Primitive camping is available (seven sites; $15 per night per site; reservations required). Picnic table, food storage box, and pit toilet are provided. No water is available. Distance from landing to campground is one-half mile and includes a 157-stair climb. WARNING: Western gulls nest on Anacapa Island From April through mid-August. During this time, visitors will encounter seabird rookery conditions: guano, strong odor, constant noise, bird carcasses, and birds protecting their territory.", parkCode: "chis", numberOfSitesReservable: "7", numberOfSitesFirstComeFirstServe: "1")


    static var exampleMovie = Movie(trackId:43,trackName: "Thunderstruck", collectionName: "AC/DC Back in Black", artistName: "AC/DC", country: "US", contentAdvisoryRating: "No",primaryGenreName: "Hard Rock",trackPrice:10.55,trackRentalPrice:5.30 ,shortDescription:"The title track from the iconic album AC/DC's greatest hit, 'Back in Black'.", longDescription: "Very long description for the track")
    
    /*trackPrice:10.55,trackRentalPrice:5.30,*/


    var trackId:Int? = 0
    var trackName: String?
    var collectionName: String?
    var artistName: String?
    var country: String?
    var contentAdvisoryRating: String?
    var primaryGenreName: String?
    var trackPrice : Double? = 0.0
    var trackRentalPrice: Double? = 0.0
    var shortDescription:String? = nil
    var longDescription:String?
    
    //For adhering to Identifiable Protocol
    var id: Int { trackId ?? 0}

    
    
}

extension Bundle{
func decode(_ file: String) -> [Movie]{
    guard let url = self.url(forResource: file, withExtension:"json") else {
        fatalError("Can't locate this file")
    }
    guard let data = try? Data(contentsOf: url) else {
        fatalError("Can't convert the url to data")
        
    }
    guard let movies = try? JSONDecoder().decode(Movies.self, from: data) else {
        fatalError("Can't decode - problem with keys and properties or values")
    }
    
    return movies.results
}
}

