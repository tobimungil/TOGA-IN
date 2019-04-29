//
//  MaterialListScreenViewController.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 26/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class MaterialListScreen: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var tableView: UITableView!
    
    var materials: [Material] = []
    var searchMaterial: [Material] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materials = createArray()
        
        
    }
    
    func createArray() -> [Material]{
        
        
        
        let material1 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Alang-alang")
        let material2 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Aloe Vera")
        let material3 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Asparagus")
        let material4 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Bawang Putih")
        let material5 = Material(image: #imageLiteral(resourceName: "dummyImage"), title: "Ciplukan")
        
        materials.append(material1)
        materials.append(material2)
        materials.append(material3)
        materials.append(material4)
        materials.append(material5)
        
        searchMaterial = materials
        
        return searchMaterial
    }
}

extension MaterialListScreen: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchMaterial.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let material = searchMaterial[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaterialCell") as! MaterialCell
        
        cell.setMaterial(material: material)
        return cell
    }
    
}

extension MaterialListScreen: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            searchMaterial = materials
            tableView.reloadData()
            return
        }
        
        searchMaterial = materials.filter({ material -> Bool in
            
            material.title.contains(searchText)
        })
        tableView.reloadData()
    }
}



