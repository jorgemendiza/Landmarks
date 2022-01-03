//
//  CircleImage.swift
//  Landmarks
//
//  Created by Jorge Mendizabal on 22/12/21.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
        
    var body: some View {
        image
            .frame(width: 160, height: 160, alignment: .center)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
