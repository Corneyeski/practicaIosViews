//
//  Tarea.swift
//  practicaIosViews
//
//  Created by DAM on 24/1/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import Foundation

class Tarea {
    
    var image: String
    var name: String
    var descripcion: String
    var terminada: Bool
    
    init(){
        image = ""
        name = ""
        descripcion = ""
        terminada = false
    }
    
    init(image: String, name: String, descripcion: String, terminada: Bool){
        self.image = image
        self.name = name
        self.descripcion = descripcion
        self.terminada = terminada
    }
    
}
