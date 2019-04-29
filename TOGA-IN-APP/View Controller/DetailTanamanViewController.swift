//
//  DetailTanamanViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class DetailTanamanViewController: UIViewController {
    @IBOutlet weak var lblJudul: UILabel!
    @IBOutlet weak var imgTanaman: UIImageView!
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var lblKhasiat: UILabel!
    
    var judul: String = "", detail: String = "", khasiat: String = ""
    var img: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblJudul.text = judul
        imgTanaman.image = img
        lblDetail.text = detail
        lblKhasiat.text = khasiat
        
        navigationController?.navigationBar.shadowImage = UIImage()

        // Do any additional setup after loading the view.
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
