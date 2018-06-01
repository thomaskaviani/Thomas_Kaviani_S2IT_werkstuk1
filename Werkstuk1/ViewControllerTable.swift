//
//  ViewControllerTable.swift
//  Werkstuk1
//
//  Created by KAVIANI Thomas (s) on 31/05/2018.
//  Copyright © 2018 KAVIANI Thomas (s). All rights reserved.
//

import UIKit

class ViewControllerTable: UITableViewController {

    var people = Database().getAll()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    //return number sections
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    //return number rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }

    //cellen van tabel
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = people[indexPath.row].voornaam! + " " + people[indexPath.row].naam!
        cell.imageView?.image = UIImage(named: people[indexPath.row].image!)
        
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toonPersoon"){
            let vc = segue.destination as? ViewControllerPersoon
            let indexPath = self.tableView.indexPathForSelectedRow
            vc?.persoon = people[(indexPath?.row)!]
        }
        
    }
 

}
