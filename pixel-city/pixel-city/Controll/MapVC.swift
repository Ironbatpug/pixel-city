//
//  MapVC.swift
//  pixel-city
//
//  Created by Molnár Csaba on 2019. 04. 25..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }


    @IBAction func centerMapBtnPressed(_ sender: Any) {
    }
}

extension MapVC: MKMapViewDelegate {
    
}
