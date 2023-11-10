//
//  Restaurant.swift
//  HackwichTen
//
//  Created by Kapena Kaaihue on 11/9/23.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation {
  
    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantType = type
        self.restaurantTitle = title
        self.coordinate = coordinate
        
        super.init()
    
    }
  
    var subtitle: String? {
        return restaurantTitle
    }
    


}
