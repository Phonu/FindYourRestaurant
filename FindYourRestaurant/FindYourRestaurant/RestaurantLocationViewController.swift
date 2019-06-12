//
//  RestaurantLocationViewController.swift
//  FindYourRestaurant
//
//  Created by Kunal Poddar on 01/06/19.
//  Copyright © 2019 Kunal Poddar. All rights reserved.
//

import UIKit
import MapKit

class RestaurantLocationViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {

    @IBOutlet weak var mapKitView: MKMapView!
    private var locationManager: CLLocationManager!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mapKitView.delegate = self
        
        self.getCurrentLocation()
        
        

    }
    
    func getCurrentLocation() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        // Check for Location Services
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
        }

    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 1.01, longitudeDelta: 1.01))
            self.mapKitView.setRegion(region, animated: true)
            self.mapKitView.showsUserLocation = true
            self.setRestaurantLocation(lat: 20.3452967, long: 85.7942576)
            self.setRestaurantLocation(lat: 20.324549, long: 85.800545)
        }
    }
    
    func setRestaurantLocation(lat:Double,long:Double) {
        let pinPoint = CLLocationCoordinate2D(latitude: lat, longitude: long)
        let annotation = MKPointAnnotation()
        annotation.coordinate = pinPoint
        annotation.title = "Infosys"
        annotation.subtitle = "current location"
        self.mapKitView.addAnnotation(annotation)
    }

}
