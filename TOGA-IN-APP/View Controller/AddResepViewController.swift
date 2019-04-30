//
//  AddResepViewController.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 29/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

var reseps: [Resep] = []

class AddResepViewController: UIViewController {
    @IBOutlet weak var imgResep: UIImageView!
    @IBOutlet weak var txtJudul: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
    @IBOutlet weak var txtMaterial1: UITextField!
    @IBOutlet weak var txtMaterial2: UITextField!
    @IBOutlet weak var txtMaterial3: UITextField!
    @IBOutlet weak var txtTakaran1: UITextField!
    @IBOutlet weak var txtTakaran2: UITextField!
    @IBOutlet weak var txtTakaran3: UITextField!
    @IBOutlet weak var txtCara: UITextField!
    @IBOutlet weak var btnAdd1: UIButton!
    @IBOutlet weak var btnAdd2: UIButton!
    
    var reseps: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnAdd1.isHidden = false
        btnAdd2.isHidden = true
        
        txtMaterial2.isHidden = true
        txtMaterial3.isHidden = true
        
        txtTakaran2.isHidden = true
        txtTakaran3.isHidden = true
        
    }
    
    @IBAction func btnAdd1Press(_ sender: Any) {
        btnAdd1.isHidden = true
        btnAdd2.isHidden = false
        
        txtMaterial2.isHidden = false
        txtTakaran2.isHidden = false
    }
    
    @IBAction func btnAdd2Press(_ sender: Any) {
        btnAdd2.isHidden = true
        
        txtMaterial3.isHidden = false
        txtTakaran3.isHidden = false
    }
    
    
    public func insertNewResepThumbnail(){
        
       
//        reseps.append(Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Tews", contributor: "Charlie Chaplin", ratingAsli: "0", bintang: #imageLiteral(resourceName: "Hatipreview")))
        
        let ResepListScreen = self.navigationController?.topViewController as? ResepListScreen
        
        let indexPath = IndexPath(row: reseps.count - 1, section: 0)
        ResepListScreen?.tableView?.beginUpdates()
        ResepListScreen?.tableView?.insertRows(at: [indexPath], with: .automatic)
        ResepListScreen?.tableView?.endUpdates()
        ResepListScreen?.tableView?.reloadData()
        
    }

    @IBAction func kirimPressed(_ sender: UIButton) {
        insertNewResepThumbnail()
//        print(judulField.text!)
    }
    
}
