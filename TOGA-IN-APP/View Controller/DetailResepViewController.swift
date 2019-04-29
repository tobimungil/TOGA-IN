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
    
    var judul = "", author = "", detail = "", love = "", cara = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblJudul.text = judul
        lblAuthor.text = author
        lblDetail.text = detail
        lblLove.text = love
        lblCara.text = cara

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
