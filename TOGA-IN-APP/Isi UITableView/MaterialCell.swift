//
//  MaterialCell.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 26/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class MaterialCell: UITableViewCell {
    @IBOutlet weak var materialTitle: UILabel!
    @IBOutlet weak var materialThumbnail: UIImageView!
    @IBOutlet weak var materialDesc: UILabel!
    
    func setMaterial(material: Material){
        materialThumbnail.image = material.image
        materialTitle.text = material.title
    }

}
