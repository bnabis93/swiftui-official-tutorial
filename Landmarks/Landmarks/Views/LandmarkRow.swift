//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Hyeon Woo Jeong on 2021/05/10.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark : Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {

        Group { //MARK : grouping view content.
            LandmarkRow(landmark: landmarks[0]) //MARK : Group's child 0
            LandmarkRow(landmark: landmarks[1]) //MARK : Group's child 1
            // MARK : Group 사용하면 view를 seperate해서 보여줌
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
