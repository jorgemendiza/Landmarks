//
//  ContentView.swift
//  Landmarks
//
//  Created by Jorge Mendizabal on 22/12/21.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView(coordinate: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: Image("turtlerock"))
                .offset(y: -100)
                .padding(.bottom, -100)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Subtitle")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About turtle")
                    .font(.title2)
                Text("Descriptive text")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
