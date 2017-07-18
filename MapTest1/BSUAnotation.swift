//
//  BSUAnotation.swift
//  MapTest1
//
//  Created by Admin on 18.07.17.
//  Copyright © 2017 rusel95. All rights reserved.
//

import MapKit

class BSUAnnotation: NSObject, MKAnnotation {
    var title: String?
    var subtitle: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, subtitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subtitle
        self.coordinate = coordinate
    }
}

