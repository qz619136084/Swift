//
//  Landmark.swift
//  Landmarks
//
//  Created by RebirthQ on 2022/7/17.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable{
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  
  private var imageName: String
  //Image后面的闭包：是一个返回Image结构的getter，相当于为变量赋值
  var image: Image{
    Image(imageName)
  }
  
  private var coordinates: Coordinates
  var locationCoordinates: CLLocationCoordinate2D{
    CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longtitude)
  }
  
  struct Coordinates: Hashable, Codable{
    var latitude: Double
    var longtitude: Double
  }
}
