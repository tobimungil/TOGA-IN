//
//  DetailResepViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 30/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class DetailResepViewController: UIViewController {
    @IBOutlet weak var lblJudul: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var lblLove: UILabel!
    @IBOutlet weak var lblCara: UILabel!
    @IBOutlet weak var lblMateri1: UILabel!
    @IBOutlet weak var lblTakaran1: UILabel!
    @IBOutlet weak var lblMateri2: UILabel!
    @IBOutlet weak var lblTakaran2: UILabel!
    @IBOutlet weak var lblMateri3: UILabel!
    @IBOutlet weak var lblTakaran3: UILabel!
    
    var judul = "", author = "", detail = "", love = "", cara = "", materi1 = "", materi2 = "", materi3 = "", takaran1 = "", takaran2 = "", takaran3 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        lblJudul.text = judul
        lblAuthor.text = author
        lblDetail.text = detail
        lblLove.text = love
        lblCara.text = cara
        lblMateri1.text = materi1
        lblMateri2.text = materi2
        lblMateri3.text = materi3
        lblTakaran1.text = takaran1
        lblTakaran2.text = takaran2
        lblTakaran3.text = takaran3
        

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
