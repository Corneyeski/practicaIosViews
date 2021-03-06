//
//  CreateActivityController.swift
//  practicaIosViews
//
//  Created by DAM on 26/1/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class CreateActivityController: UIViewController ,
UIPickerViewDelegate, UIPickerViewDataSource  {
    
    @IBOutlet weak var create: UIButton!
    @IBOutlet weak var error: UITextField!
    @IBOutlet weak var desc: UITextView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var image: UIImageView!
    var tipo = ["trabajo","casa","colegio","ocio"]
    var choise = "trabajo"
    
    var tareas:[Tarea] = []
    
    @IBAction func submit(_ sender: Any) {
        if desc.text == "" || name.text == "" {
            error.isHidden = false;
        }else{
            create.sendActions(for: .touchUpInside)
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipo.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipo[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch tipo[row] {
        case "trabajo":
            image.image = UIImage(named: "trabajo.jpg")
        case "casa":
            image.image = UIImage(named: "casa.png")
        case "colegio":
            image.image = UIImage(named: "colegio.png")
        case "ocio":
            image.image = UIImage(named: "ocio.jpg")
            
        default:
            image.image = UIImage(named: "empty.png")
        }
        choise = tipo[row]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "trabajo.jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (sender  as AnyObject).tag == 1 {
            
            let create = segue.destination as! ViewController
            
            tareas.append(Tarea(name: name.text!, descripcion: desc.text!, image: choise))
            
            create.tareas = tareas
        }
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
