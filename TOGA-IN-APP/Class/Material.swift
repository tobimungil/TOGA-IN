//
//  Material.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 26/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import Foundation
import UIKit

class Material {
    
    var image: UIImage
    var title: String
    var khasiat: String
    var desc: String
    var kontra: String
    
    
    init(image: UIImage, title: String, desc: String, khasiat: String, kontra: String){
        self.image = image
        self.title = title
        self.desc = desc
        self.khasiat = khasiat
        self.kontra = kontra
    }
    
}
