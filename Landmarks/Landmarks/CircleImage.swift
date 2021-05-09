//
//  CircleImage.swift
//  Landmarks
//
//  Created by Hyeon Woo Jeong on 2021/05/09.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/) // MARK : use as a image's mask
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7 )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
