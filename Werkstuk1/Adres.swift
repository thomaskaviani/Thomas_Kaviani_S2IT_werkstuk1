//
//  Adres.swift
//  Werkstuk1
//
//  Created by ontlener on 01/06/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import Foundation
import UIKit

class Adres : NSObject {
    
    var straat: String
    var nummer: String
    var postcode: String
    var stad: String
    var land: String
    var lat: Double
    var long: Double
    
    override init(){
        self.straat = ""
        self.nummer = "0"
        self.postcode = "0000"
        self.stad = ""
        self.land = ""
        self.lat = 0.0
        self.long = 0.0
        
    }
    
    init(straat:String, nummer:String, postcode:String, stad:String, land:String, lat:Double, long:Double){
        self.straat = straat;
        self.nummer = nummer;
        self.postcode = postcode;
        self.stad = stad;
        self.land = land;
        self.lat = lat;
        self.long = long;
    }
    
    
    
}
