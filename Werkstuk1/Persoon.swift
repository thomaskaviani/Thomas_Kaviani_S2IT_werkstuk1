//
//  Persoon.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 24/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import Foundation
import MapKit
import UIKit

class Persoon {
    
    var naam: String?
    var voornaam: String?
    var adres: String?
    var telefoon: String?
    var gpsCoordinaten: CLLocationCoordinate2D?
    var image: String?
    
    init(naam: String, voornaam: String, adres: String, telefoon: String, lat: Double, long: Double, img: String){
        self.naam = naam;
        self.voornaam = voornaam;
        self.adres = adres;
        self.telefoon = telefoon;
        self.gpsCoordinaten = CLLocationCoordinate2D(latitude: lat, longitude: long);
        self.image = img;
    }
    
    init(){
        self.naam = "Kaviani"
        self.voornaam = "Thomas"
        self.adres = "Lampstraat 47 1500 Halle"
        self.telefoon = "0471825154"
        self.gpsCoordinaten = CLLocationCoordinate2D(latitude: 50.748412, longitude: 4.234559)
        self.image = "default"
    }
}
