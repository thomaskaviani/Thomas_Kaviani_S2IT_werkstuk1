//
//  ViewControllerPersoon.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 24/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewControllerPersoon: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    var manager = CLLocationManager()
    var persoon = Persoon()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var map: MKMapView!
    
    @IBOutlet weak var telefoon: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var naam: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 197/255.0, green: 217/255.0, blue: 249/255.0, alpha: 1.0)
        
        self.adres.text = (persoon.adres?.straat)! + " " + (persoon.adres?.nummer)! + ", " + (persoon.adres?.postcode)! + " " + (persoon.adres?.stad)! + " " + (persoon.adres?.land)!
        
        self.telefoon.text = persoon.telefoon!
        self.naam.text = persoon.naam! + " " + persoon.voornaam!
        self.image.image = UIImage(named: persoon.image!)
        
        //coord van de persoon
        let location = CLLocation(latitude: (persoon.adres?.lat)!, longitude: (persoon.adres?.long)!)
        let radius : CLLocationDistance = 5000;
        
        
        
        //centreer map op coord met afstand
        func centreerMap(location: CLLocation){
            let coord = MKCoordinateRegionMakeWithDistance(location.coordinate, radius, radius)
            map.setRegion(coord, animated: true)
        }
        
        
        let pin = Pin(coordinate: CLLocationCoordinate2D(latitude: (persoon.adres?.lat)!, longitude: (persoon.adres?.long)!), title: persoon.naam! + " " + persoon.voornaam!);
        self.map.addAnnotation(pin)
        centreerMap(location: location)
        
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
        if (segue.identifier == "toonImage"){
            let vc = segue.destination as? ViewControllerImage
    
            vc?.persoon = persoon
            
        }
        
    }
    
}

