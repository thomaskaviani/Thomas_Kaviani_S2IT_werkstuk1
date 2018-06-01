//
//  Pin.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 31/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import Foundation
import MapKit
import CoreLocation

class Pin : NSObject, MKAnnotation{
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    override init(){
        coordinate = CLLocationCoordinate2D()
        title = ""
    }
    
    init(coordinate: CLLocationCoordinate2D, title: String){
        self.coordinate = coordinate
        self.title = title
        
    }
    
}
