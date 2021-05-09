//
//  Landmark.swift
//  Landmarks
//
//  Created by Hyeon Woo Jeong on 2021/05/10.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable,Identifiable  {
    var id : Int // for Identifiable protocol, only need to add a property to decode it when reading the data.
    var name : String
    var park : String
    var state : String
    var description : String
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates : Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
