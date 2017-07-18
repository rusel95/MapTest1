//
//  ViewController.swift
//  MapTest1
//
//  Created by Admin on 18.07.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.setRegion(MKCoordinateRegionMakeWithDistance(CLLocationCoordinate2DMake(43.615239249280, -116.20365589857101), 500, 500), animated: true)
        
        let pin = BSUAnnotation(title: "soasdfadsfxme title", subtitle: "some subasdvasdvcvtitle", coordinate: CLLocationCoordinate2DMake(43.61523, -116.20365))
        
        mapView.addAnnotation( pin )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

