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

    
    @IBOutlet weak var judulField: UITextField!
    @IBOutlet weak var descField: UITextField!
    @IBOutlet weak var materialField: UITextField!
    @IBOutlet weak var takaranField: UITextField!
    @IBOutlet weak var caraField: UITextField!
    
    var reseps: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    public func insertNewResepThumbnail() -> [Resep]{
        
       
        reseps.append(Resep(image: #imageLiteral(resourceName: "dummyImage"), title: judulField.text!, contributor: "Charlie Chaplin", ratingAsli: "0", bintang: #imageLiteral(resourceName: "Hatipreview")))
        
        return reseps
    }

    @IBAction func kirimPressed(_ sender: UIButton) {
        insertNewResepThumbnail()
    }
    
}
