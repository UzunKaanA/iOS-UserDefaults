//
//  ViewController.swift
//  UserDefaults
//
//  Created by Kaan Uzun on 14.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        
        //Delete, restore.
        //ud.removeObject(forKey: "counter")
        
        //Mostly read first...
        var counter = ud.integer(forKey: "counter") //Default: 0   , can add optional default value with adding " ?? " .
        counter += 1
        
        //Store
        ud.set(counter,forKey: "counter")
        
        lblResult.text = "Opening Counter : \(counter)"
        
    }


}

