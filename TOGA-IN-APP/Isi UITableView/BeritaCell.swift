//
//  BeritaCell.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class BeritaCell: UITableViewCell {

    @IBOutlet weak var beritaGambar: UIImageView!
    @IBOutlet weak var beritaJudul: UILabel!
    
    func setBerita(berita: Berita){
        beritaGambar.image = berita.image
        beritaJudul.text = berita.title
        
    }
    

}
