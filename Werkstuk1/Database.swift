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
    
    var data = [Persoon]()
    
    func getAll() -> Array<Persoon>{
        
        data.append(Persoon(naam: "Kaviani", voornaam: "Thomas", telefoon: "+32471825154", adres: Adres(straat:"Kasteelbrakelsesteenweg", nummer: "379", postcode: "1502", stad: "Lembeek", land: "België", lat: 50.701677, long: 4.245057), img: "thomas_image"));
        
        data.append(Persoon(naam: "Bin Laden", voornaam: "Osama", telefoon: "+32470825678", adres: Adres(straat:"Meir", nummer: "4", postcode: "2000", stad: "Brugge", land: "België", lat: 51.210533, long: 3.239931), img: "osama_image"));
        data.append(Persoon(naam: "Hoessein", voornaam: "Sadam", telefoon: "+32471353657", adres: Adres(straat:"Kadhimiya", nummer: "2", postcode: "31003", stad: "Bagdad", land: "Irak", lat: 33.385802, long: 44.343669), img: "sadam_image"));
        data.append(Persoon(naam: "Bush", voornaam: "George W.", telefoon: "+32471895472", adres: Adres(straat:"15th Street NW", nummer: "11", postcode: "66666", stad: "Washington DC", land: "België", lat: 38.897309, long: -77.038973), img: "bush_image"));
        data.append(Persoon(naam: "Obama", voornaam: "Barrack", telefoon: "+32471984268", adres: Adres(straat:"Meir", nummer: "11", postcode: "2000", stad: "Antwerpen", land: "Borgerocco", lat: 51.213178, long: 4.331575), img: "obama_image"));
        data.append(Persoon(naam: "Christus", voornaam: "Jezus", telefoon: "+32471751235", adres: Adres(straat:"Kasteelbrakelsesteenweg", nummer: "379", postcode: "3333", stad: "Nazaret", land: "Palestina", lat: 32.703305, long: 35.299563), img: "jezus_image"));
        
        return data;
    }
}
