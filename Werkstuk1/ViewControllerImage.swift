//
//  ViewControllerImage.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 31/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import UIKit

class ViewControllerImage: UIViewController {

    var persoon = Persoon()
    
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myImage.image = UIImage(named: persoon.image!)!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
