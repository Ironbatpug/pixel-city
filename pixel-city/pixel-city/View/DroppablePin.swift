//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Molnár Csaba on 2019. 04. 28..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String){
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
    
}
