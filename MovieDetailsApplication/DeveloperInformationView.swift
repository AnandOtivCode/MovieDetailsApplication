//
//  ContentView.swift
//  Assignment6
//
//  Created by Anand Otiv on 2025-03-01.
//

import SwiftUI

struct DeveloperInformationView: View {
    @State private var isAlertShowing = false
    var body: some View {
        ZStack{
            //Displays background color
            Color("Background Color").ignoresSafeArea(edges: .all)
            VStack {
                Spacer()
                //Displays image of Anand
                Image("Anand").resizable().aspectRatio(contentMode: .fit).frame(width: 300, height:300).clipShape(Circle())
                Spacer()
                //Heading Name Text
                Text("Anand Otiv")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                //Display Programs of study and graduating year
                Text("Program Of Study: Computer Programming")
                    .font(.callout)
                Text("Year: 2026 \(Image(systemName: "graduationcap.fill"))")
                Divider()
                Spacer()
                
                //Bio
                Text("After I finish my diploma I'd like to work on machine learning and data science. I find data very interesting and I'd like to contribute a valuable part to the Artificial Intelligence field of Science some day.")
                    .font(.subheadline)
                    .fontWeight(.heavy)
                    .padding(.all, 12.0)
                    .background(Color.mint)
                    .multilineTextAlignment(.center).clipShape(RoundedRectangle(cornerRadius: 10))
                Spacer()
                Button("Ok", systemImage: "computermouse.fill"){
                    isAlertShowing.toggle()
                }.buttonStyle(.borderedProminent)
                    .alert("My favourite course is MAD103 !", isPresented: $isAlertShowing) {
                        
                    }
            }
            
            .padding()
        }
    }
}

#Preview {
    DeveloperInformationView()
}
