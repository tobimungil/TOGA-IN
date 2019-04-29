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
    
    public func insertNewResepThumbnail(){
        
       
        reseps.append(Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Tews", contributor: "Charlie Chaplin", ratingAsli: "0", bintang: #imageLiteral(resourceName: "Hatipreview")))
        
        let ResepListScreen = self.navigationController?.topViewController as? ResepListScreen
        
        let indexPath = IndexPath(row: reseps.count - 1, section: 0)
        ResepListScreen?.tableView?.beginUpdates()
        ResepListScreen?.tableView?.insertRows(at: [indexPath], with: .automatic)
        ResepListScreen?.tableView?.endUpdates()
        ResepListScreen?.tableView?.reloadData()
        
    }

    @IBAction func kirimPressed(_ sender: UIButton) {
        insertNewResepThumbnail()
        print(judulField.text!)
    }
    
}
