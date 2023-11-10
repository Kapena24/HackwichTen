//
//  ViewController.swift
//  HackwichTen
//
//  Created by Kapena Kaaihue on 11/9/23.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
   
let initialLocation = CLLocation(latitude: 21.384014, longitude: -158.039621)
    
let regionRadius: CLLocationDistance = 10000
    
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        centerMapOnLocation(location: initialLocation)
        
        func centerMapOnLocation(location: CLLocation) {
               let coordinateRegion = MKCoordinateRegion(
                   center: location.coordinate,
                   latitudinalMeters: regionRadius,
                   longitudinalMeters: regionRadius
               )
               mapView.setRegion(coordinateRegion, animated: true)
           }
        let restaurantOne = Restaurant (title: "Kalapawai", type: "American", coordinate:CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
                                    
}
}
