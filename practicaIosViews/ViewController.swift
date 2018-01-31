//
//  ViewController.swift
//  practicaIosViews
//
//  Created by DAM on 19/1/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tareas:[Tarea] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender  as AnyObject).tag == 1 {
            
            let create = segue.destination as! CreateActivityController
            
            
        }else{
            
        }
    }
}

