//
//  ViewController.swift
//  GoogleMapsAccuTerraDemo
//
//  Created by Carlos Torres on 11/25/20.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
                
        // Visit https://accuterra.com and create your free account to get a map API key.
        let accuterraMapsKey = "YOUR-MAP-API-KEY-HERE"
        let camera = GMSCameraPosition.camera(withLatitude: 39.375239, longitude: -104.861077, zoom: 14.0)
        let mapView = GMSMapView.map(withFrame: view.frame, camera: camera)
        
        let urls: GMSTileURLConstructor = { (x, y, zoom) in
          let url = "https://maps.accuterra.com/v1/raster/accuterra-outdoors/\(zoom)/\(x)/\(y).png?key=\(accuterraMapsKey)"
          return URL(string: url)
        }

        let layer = GMSURLTileLayer(urlConstructor: urls)
        layer.zIndex = 100
        layer.map = mapView
        
        view.addSubview(mapView)
    }


}

