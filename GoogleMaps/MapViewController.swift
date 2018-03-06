//
//  ViewController.swift
//  SideMenuTutorial
//
//  Created by Stockill, Jordan (Student) on 3/2/18.
//  Copyright © 2018 Jordan Stockill. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    
    var mapView: GMSMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // You don't need to modify the default init(nibName:bundle:) method.
        
        
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 35.682129, longitude: 139.706870, zoom: 15)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 35.682129, longitude: 139.706870)
        marker.title = "Mayuko’s Little Kitchen"
        marker.snippet = "Shibuya"
        marker.map = mapView
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action:#selector(getter: next))
        
}
    
    func next() {
        let nextLocation = CLLocationCoordinate2DMake(35.705866, 139.751945)
        mapView?.camera = GMSCameraPosition.camera(withLatitude: 35.705866, longitude: 139.751945, zoom: 6)
        
        let marker = GMSMarker(position: nextLocation)
        marker.title = "Tokyo Dome"
        marker.snippet = "Chiyoda"
        marker.map = mapView
    }
}
