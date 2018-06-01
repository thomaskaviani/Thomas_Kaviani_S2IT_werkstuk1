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
    var adres: Adres?
    var telefoon: String?
    var image: String?
    
    init(naam: String, voornaam: String, telefoon: String, adres:Adres , img: String){
        self.naam = naam;
        self.voornaam = voornaam;
        self.adres = adres;
        self.telefoon = telefoon;
        self.image = img;
    }
    
    init(){
        self.naam = "Dummy"
        self.voornaam = "Dumb"
        self.telefoon = "0400000000"
        self.image = "default"
        self.adres = Adres()
    }
}
