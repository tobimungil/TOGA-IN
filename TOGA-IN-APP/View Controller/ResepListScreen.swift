//
//  ResepListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ResepListScreen: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var reseps: [Resep] = []
    var searchResep: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        reseps = createArray()
       
    }
    
    func createArray() -> [Resep]{
        
        let resep1 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Batuk Alami", contributor: "Charlie Chaplin", ratingAsli: "11", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep2 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Panas Dalam", contributor: "Ricardo Milos", ratingAsli: "109", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep3 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Racikan Pilek", contributor: "Jonathan Chris", ratingAsli: "4", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep4 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Batuk Berdahak", contributor: "Gachi Muchi", ratingAsli: "52", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep5 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Sakit Tenggorokan Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep6 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Flu Ringan", contributor: "Huey Keith", ratingAsli: "2", bintang: #imageLiteral(resourceName: "Hatipreview"))
        let resep7 = Resep(image: #imageLiteral(resourceName: "dummyImage"), title: "Obat Masuk Angin Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
        
        
        reseps.append(resep1)
        reseps.append(resep2)
        reseps.append(resep3)
        reseps.append(resep4)
        reseps.append(resep5)
        reseps.append(resep6)
        reseps.append(resep7)
        
        searchResep = reseps
        
        return searchResep
    }
    

}

extension ResepListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResep.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let resep = searchResep[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResepCell") as! ResepCell
        
        cell.setResep(resep: resep)
        
        return cell
    }
}

extension ResepListScreen: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        guard !searchText.isEmpty else {
            searchResep = reseps
            tableView.reloadData()
            return
        }
        
        searchResep = reseps.filter({ Resep -> Bool in
            
            Resep.title.contains(searchText)
        })
        tableView.reloadData()
    }
}
