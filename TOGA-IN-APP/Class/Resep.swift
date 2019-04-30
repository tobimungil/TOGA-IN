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
    var desc: String
    var cara: String
    var materi1: String
    var materi2: String
    var materi3: String
    var takaran1: String
    var takaran2: String
    var takaran3: String
    
    init(image: UIImage, title: String, contributor: String, ratingAsli: String, bintang: UIImage, desc: String, cara: String, materi1: String, materi2: String, materi3: String, takaran1: String, takaran2: String, takaran3: String){
        
        self.image = image
        self.title = title
        self.contributor = contributor
        self.ratingAsli = ratingAsli
        self.bintang = bintang
        self.desc = desc
        self.cara = cara
        self.materi1 = materi1
        self.materi2 = materi2
        self.materi3 = materi3
        self.takaran1 = takaran1
        self.takaran2 = takaran2
        self.takaran3 = takaran3
    }
}
