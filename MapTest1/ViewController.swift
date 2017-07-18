//
//  ViewController.swift
//  MapTest1
//
//  Created by Admin on 18.07.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        
        let span : MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        
        let myLocation : CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        
        let region : MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        mapView.setRegion(region, animated: true)
        
        self.mapView.showsUserLocation = true
        
        print(location.speed, location.altitude, location.floor, location.course, location.horizontalAccuracy, location.timestamp)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mapView.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(43.615239249280, -116.20365589857101), 500, 500), animated: true)
//        
//        let pin = BSUAnnotation(title: "soasdfadsfxme title", subtitle: "some subasdvasdvcvtitle", coordinate: CLLocationCoordinate2DMake(43.61, -116.20))
//        
//        mapView.addAnnotation( pin )
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

