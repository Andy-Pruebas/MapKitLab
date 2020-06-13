//
//  ViewController.swift
//  MapKitLab11
//
//  Created by mbtec22 on 6/13/20.
//  Copyright © 2020 Tecsup. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var selector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       mapa.showsUserLocation = true
    }

    @IBAction func CambiarVistaMapa(_ sender: Any) {
        switch selector.selectedSegmentIndex {
        case 0:
            mapa.mapType = .standard
        case 1:
            mapa.mapType = .satellite
        case 2:
            mapa.mapType = .hybrid
        default:
            break
        }
    }
    
}

