//
//  ResepCell.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ResepCell: UITableViewCell {

    @IBOutlet weak var resepGambar: UIImageView!
    @IBOutlet weak var resepNama: UILabel!
    @IBOutlet weak var resepKontributor: UILabel!
    @IBOutlet weak var ratingAsliResep: UILabel!

    @IBOutlet weak var bintangResep: UIImageView!
    
    func setResep(resep: Resep){
        
        resepGambar.image = resep.image
        resepNama.text = resep.title
        resepKontributor.text = resep.contributor
        ratingAsliResep.text = resep.ratingAsli
        bintangResep.image = resep.bintang
    }
    
}
