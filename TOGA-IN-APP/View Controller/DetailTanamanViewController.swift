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
    var lblJudulTanaman = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblJudul.text = lblJudulTanaman
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
