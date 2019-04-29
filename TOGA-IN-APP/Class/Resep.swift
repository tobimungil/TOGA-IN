//
//  Resep.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import Foundation
import UIKit

class Resep{
    
    var image: UIImage
    var title: String
    var contributor: String
    var ratingAsli: String
    var bintang: UIImage
    
    init(image: UIImage, title: String, contributor: String, ratingAsli: String, bintang: UIImage){
        
        self.image = image
        self.title = title
        self.contributor = contributor
        self.ratingAsli = ratingAsli
        self.bintang = bintang
    }
}
