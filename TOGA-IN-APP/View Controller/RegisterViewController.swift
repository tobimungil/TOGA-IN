//
//  RegisterViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 30/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet weak var txtNama: UITextField!
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var txtConf: UITextField!
    @IBOutlet weak var lblWarn1: UILabel!
    @IBOutlet weak var lblWarn2: UILabel!
    @IBOutlet weak var lblWarn3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWarn1.isHidden = true
        lblWarn2.isHidden = true
        lblWarn3.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterButtonPress(_ sender: UIButton) {
        var salah = 0
        lblWarn1.isHidden = true
        lblWarn2.isHidden = true
        lblWarn3.isHidden = true
        
        if txtPass.text! != txtConf.text! {
            lblWarn3.isHidden = false
            lblWarn3.text = "Password tidak cocok"
            salah += 1
        }
        if arrId.contains(txtID.text!) {
            lblWarn1.isHidden = false
            lblWarn1.text = "ID sudah digunakan"
            salah += 1
        }
        if salah == 0 {
            arrPass.append(txtPass.text!)
            arrId.append(txtID.text!)
            arrName.append(txtNama.text!)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        
        return true
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
