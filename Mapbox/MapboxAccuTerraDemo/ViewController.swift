//
//  ViewController.swift
//  MapboxAccuTerraDemo
//
//  Created by Carlos Torres on 12/1/20.
//

import UIKit
import Mapbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Visit https://accuterra.com and create your free account to get a map API key.
        let accuterraMapsKey = "YOUR-MAP-API-KEY-HERE"
                
        let url = URL(string: "https://maps.accuterra.com/v1/styles/accuterra-outdoors/style.json?key=\(accuterraMapsKey)")
        let mapView = MGLMapView(frame: view.bounds, styleURL: url)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        mapView.setCenter(CLLocationCoordinate2D(latitude: 39.375239, longitude: -104.861077), zoomLevel: 14, animated: false)
        view.addSubview(mapView)
    }


}

