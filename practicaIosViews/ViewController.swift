//
//  ViewController.swift
//  practicaIosViews
//
//  Created by DAM on 19/1/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tareas:[Tarea] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tareas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "cel", for: indexPath) as! CeldaPersonalizada
        
        let t:Tarea = tareas[indexPath.row]
        print(t.image)
        celda.imgCelda.image = UIImage(named: t.image)
        
        switch t.image {
        case "trabajo":
            celda.lblName.textColor = UIColor.red
        case "casa":
            celda.lblName.textColor = UIColor.yellow
        case "colegio":
            celda.lblName.textColor = UIColor.blue
        case "ocio":
            celda.lblName.textColor = UIColor.green
        default:
            celda.lblName.textColor = UIColor.white
        }
        
        if t.terminada {
            celda.tick.isHidden = false
        }
        
        celda.lblName.text = t.name
        celda.lblDesc.text = t.descripcion
        
        
        
        return celda
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender  as AnyObject).tag == 1 {
            let create = segue.destination as! CreateActivityController
            
            create.tareas = tareas;
        }
        
        if segue.identifier == "cel" {
            
            let create = segue.destination as! EditTareaController
            
            create.tareas = tareas;
            create.row = sender as! Int
            
            print("hola que tal \(sender as! Int)")
        }
        
        if (sender  as AnyObject).tag == 12 {
            let create = segue.destination as! EditTareaController
            
            create.t = tareas[(tableView.indexPathForSelectedRow?.row)!]
            
            create.tareas = tareas;
            //create.row = sender as! Int
            
            print("hola que tal \(tableView.indexPathForSelectedRow?.row)!)")
        }
    }
}

