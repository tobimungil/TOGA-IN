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
        
        
        
        
        let material1 = Material(image: #imageLiteral(resourceName: "Talas"), title: "Alang-Alang", desc: "alang-alang adalah obat canggih", khasiat: "Bikin cepat kaya", kontra: "kalo kebanyakan di pake ketagihan")
        materials.append(material1)
       
        
        searchMaterial = materials
        
        return searchMaterial
    }
    
}

extension MaterialListScreen: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchMaterial.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let material = searchMaterial[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaterialCell") as! MaterialCell
        
        cell.setMaterial(material: material)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "detailTanamanViewController") as! DetailTanamanViewController
        
        viewController.judul = materials[indexPath.row].title
        viewController.img = materials[indexPath.row].image
        viewController.detail = materials[indexPath.row].desc
        viewController.khasiat = materials[indexPath.row].khasiat
        
        self.navigationController?.pushViewController(viewController, animated: true)
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



