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
                
                //Background Image
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
                    
                    
                    //Display Developer Information Page
                    Button("Developer Information", systemImage: "info.circle"){
                        sheetIsShowing.toggle()
                    }
                    .padding(.top, 5.0)
                    
                }
            }
            
            
            
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    Button("DeveloperInformation", systemImage: "info.circle"){
//                        sheetIsShowing.toggle()
//                    }
//                    
//                }
//            }
            //Toggle showing developer information view
            .sheet(isPresented: $sheetIsShowing) {
                DeveloperInformationView()
            }
        }
    }
}

#Preview {
    MainView()
}
