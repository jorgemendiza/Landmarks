//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jorge Mendizabal on 22/12/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
