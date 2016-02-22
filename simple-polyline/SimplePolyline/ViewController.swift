//
//  ViewController.swift
//  SimplePolyline
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
            
            let camera = GMSCameraPosition.cameraWithLatitude(0, longitude:-165, zoom:2)
            
            let mapView = GMSMapView.mapWithFrame(CGRectZero, camera:camera)

            let path = GMSMutablePath()
            path.addLatitude(-33.866, longitude: 151.195) //Sydney
            path.addLatitude(-18.142, longitude: 178.431) //Fiji
            path.addLatitude(21.291, longitude: -157.821) //Hawaii
            path.addLatitude(37.423, longitude: -122.091) //Mountain View
            
            let polyline = GMSPolyline(path: path)
            polyline.strokeColor = UIColor.blueColor()
            polyline.strokeWidth = 5.0
            polyline.map = mapView

            
            self.view = mapView
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

