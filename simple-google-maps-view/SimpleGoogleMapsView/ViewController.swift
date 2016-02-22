//
//  ViewController.swift
//  SimpleGoogleMapsView
//
//  Created by Julio Cesar Fausto on 22/02/16.
//  Copyright © 2016 Julio Cesar Fausto. All rights reserved.
//

import UIKit
import GoogleMaps


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        if appDelegate.gmsOk {
        
            let camera = GMSCameraPosition.cameraWithLatitude(-33.868, longitude:151.2086, zoom:6)
            
            let mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)
            
            let marker = GMSMarker()
            marker.position = camera.target
            marker.snippet = "Hello World"
            marker.appearAnimation = kGMSMarkerAnimationPop
            marker.map = mapView
            
            self.view = mapView
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

