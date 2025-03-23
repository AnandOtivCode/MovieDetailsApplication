//
//  MainView.swift
//  MovieDetailsApplication
//
//  Created by Anand Otiv on 2025-03-22.
//

// Picture From : https://pixabay.com/illustrations/fantasy-magic-wizard-sorcery-8803376/


import SwiftUI

struct MainView: View {
    @State private var sheetIsShowing = false
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.black)
                //                .ignoresSafeArea()
                Image("LordOfTheRingsIcon").resizable().frame(width: 400, height: 543).opacity(0.3)
                VStack{
                    
                    Text("Lord Of The Rings Movies App")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color.green)
                        .foregroundStyle(.white)
                    
                    
                    Text("Completed by fetching data from the ITunes API")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                        .padding(.top, 15.0)
                    
                }
            }
            
            
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Info", systemImage: "info.circle"){
                        sheetIsShowing.toggle()
                    }
                }
            }
            .sheet(isPresented: $sheetIsShowing) {
                VStack{
                    Text("It's working")
                    
                }
            }
        }
    }
}



//  Button("Developer Information", systemImage: "info.circle")
#Preview {
    MainView()
}
