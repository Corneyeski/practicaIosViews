//
//  CeldaPersonalizada.swift
//  practicaIosViews
//
//  Created by DAM on 2/2/18.
//  Copyright © 2018 DAM. All rights reserved.
//

import UIKit

class CeldaPersonalizada: UITableViewCell {
    
    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblDesc: UITextField!
    @IBOutlet weak var tick: UIImageView!
    @IBOutlet weak var imgCelda: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
