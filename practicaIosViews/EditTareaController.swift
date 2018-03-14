//
//  EditTareaController.swift
//  practicaIosViews
//
//  Created by DAM on 2/2/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class EditTareaController: UIViewController {

    var row:Int = 0
    var tareas:[Tarea] = []
    var t:Tarea = Tarea()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var desc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        t = tareas[row]
        
        image.image = UIImage(named: t.image)
        name.text = t.name
        desc.text = t.descripcion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (sender  as AnyObject).tag == 1 {
            t.terminada = true
            t.name = name.text!
            t.descripcion = desc.text
            tareas[row] = t
            
            let create = segue.destination as! ViewController
            create.tareas = tareas
        }
        
    }

}
