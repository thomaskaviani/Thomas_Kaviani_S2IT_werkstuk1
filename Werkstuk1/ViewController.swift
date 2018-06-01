//
//  ViewController.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 24/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var manager = CLLocationManager()
    var persoon = Persoon()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var telefoon: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var naam: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.adres.text = persoon.adres!
        self.telefoon.text = persoon.telefoon!
        
        self.naam.text = persoon.naam! + " " + persoon.voornaam!
        
        self.image.image = UIImage(named: persoon.image!)
        
        let pin = Pin(coordinate: CLLocationCoordinate2D(latitude: (persoon.gpsCoordinaten?.latitude)! ,longitude:(persoon.gpsCoordinaten?.longitude)!), title: persoon.naam! + " " + persoon.voornaam!);
        self.map.addAnnotation(pin)
        self.map.selectAnnotation(pin, animated: true)
        
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    internal func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView ){
        let center = CLLocationCoordinate2D(latitude: (view.annotation?.coordinate.latitude)!, longitude: (view.annotation?.coordinate.longitude)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
        
        map.setRegion(region, animated: true)
    
    }
    
    
    
    
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "toonImage"){
            let vc = segue.destination as? ViewControllerImage
    
            vc?.persoon = persoon
            
        }
        
    }}

