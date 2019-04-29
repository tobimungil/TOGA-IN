//
//  detailMaterial.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 30/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class detailMaterial: UIViewController {

    
    @IBOutlet weak var lblJudul: UILabel!
    @IBOutlet weak var imgTanam: UIImageView!
    @IBOutlet weak var lblDeskripsi: UILabel!
    @IBOutlet weak var lblKhasiat: UILabel!
    @IBOutlet weak var lblKontra: UILabel!
    
    var judul = "", img = "", detail = "", khasiat = "", kontra = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblJudul.text = judul
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
