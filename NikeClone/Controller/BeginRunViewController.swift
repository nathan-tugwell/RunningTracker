//
//  BeginRunViewController.swift
//  NikeClone
//
//  Created by Nathan Tugwell on 29/10/2018.
//  Copyright © 2018 petsathome. All rights reserved.
//

import UIKit
import MapKit

class BeginRunViewController: LocationViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationAuthStatus()
        mapView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self as CLLocationManagerDelegate
        manager?.startUpdatingLocation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }
    
    @IBAction func locationCenterButtonPressed(_ sender: Any) {
        
    }
}

extension BeginRunViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            checkLocationAuthStatus()
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        }
    }
}
