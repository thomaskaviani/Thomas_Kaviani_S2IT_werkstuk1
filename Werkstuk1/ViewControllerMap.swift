//
//  ViewControllerMap.swift
//  Werkstuk1
//
//  Created by ontlener on 01/06/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import UIKit
import MapKit


class ViewControllerMap: UIViewController {

    @IBOutlet weak var map: MKMapView!
    var manager = CLLocationManager()
    var personen: Array<Persoon> = Array()
    var location: CLLocation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.personen = Database().getAll()
        
        if(CLLocationManager.locationServicesEnabled()){
            
            self.manager = CLLocationManager()
            self.manager.delegate = self as? CLLocationManagerDelegate
            self.manager.desiredAccuracy = kCLLocationAccuracyBest
            self.manager.requestAlwaysAuthorization()
            self.manager.requestWhenInUseAuthorization()
            self.manager.startUpdatingLocation()
            
            location = CLLocation(latitude: (personen[0].adres?.lat)!, longitude: (personen[0].adres?.long)!)
            
            
            if (location != nil){
                let radius: CLLocationDistance = 140000
                let center = CLLocationCoordinate2D(latitude: self.location.coordinate.latitude, longitude: self.location.coordinate.longitude)
                let regio = MKCoordinateRegionMakeWithDistance(center, radius, radius)
                self.map.setRegion(regio, animated: true)
            }
        }
        
        for persoon in personen {
            let pin = Pin(coordinate: CLLocationCoordinate2D(latitude: (persoon.adres?.lat)!, longitude: (persoon.adres?.long)!), title: persoon.naam! + " " + persoon.voornaam!);
            self.map.addAnnotation(pin)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
