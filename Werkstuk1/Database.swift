//
//  Database.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 28/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import Foundation
import Foundation
import UIKit
import MapKit

class Database{
    
    var dataAray = [Persoon]()
    
    func getAll() -> Array<Persoon>{
        
        let persoon1 = Persoon(naam: "Thomas", voornaam: "Kaviani", adres: "Kasteelbrakelsesteenweg 379 1502 Lembeek", telefoon: "0471825154", lat: 50.701852, long: 4.244945, img: "thomas_image" )
        dataAray.append(persoon1)

        let persoon2 = Persoon(naam: "Osama", voornaam: "Bin Laden", adres: "Lampstraat 47 1500 Halle", telefoon: "0469882356", lat: 50.740922, long: 4.228299, img: "osama_image")
        dataAray.append(persoon2)
        
        let persoon3 = Persoon(naam: "Sadam", voornaam: "Hoessein", adres: "Alsembergsesteenweg 45 1654 Dworp", telefoon: "04568097", lat: 50.728810, long: 4.301991, img: "sadam_image")
        dataAray.append(persoon3)

        let persoon4 = Persoon(naam: "George", voornaam: "Bush", adres: "Kerkstraat 2 1000 Brussel", telefoon: "0466666666", lat: 38.897664, long: -77.035263, img: "bush_image")
        dataAray.append(persoon4)

        let persoon5 = Persoon(naam: "Barrack", voornaam: "Obama", adres: "15th Street NW 20004 Washington DC", telefoon: "078542156", lat: 38.897664, long: -77.035263, img: "obama_image")
        dataAray.append(persoon5)

        let persoon6 = Persoon(naam: "Jezus", voornaam: "Christus", adres: "Heaven", telefoon: "333333333", lat: 31.673797, long: 35.181847, img: "jezus_image")
        dataAray.append(persoon6)
        
        return dataAray;
    }
}
