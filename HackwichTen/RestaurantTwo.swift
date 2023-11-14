//
//  RestaurantTwo.swift
//  HackwichTen
//
//  Created by Kapena Kaaihue on 11/14/23.
//

import UIKit

class RestaurantTwo: NSObject, MKAnnotation {

    let restaurantTitle: String?
    let restaurantType: String
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantType = title
        self.restaurantTitle = type
        self.coordinate = coordinate
        
        super.init()
    
    }
    var subtitle: String? {
        return restaurantTitle
    }

}
