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
    
    
//    var reseps: [Resep] = []
    var searchResep: [Resep] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        bgResep.layer.cornerRadius = 7
//        bgResep.layer.shadowColor = UIColor.black.cgColor
//        bgResep.layer.shadowOpacity = 0.8
//        bgResep.layer.shadowOffset = CGSize.zero
//        bgResep.layer.shadowRadius = 5
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.title = "Resep"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]

        reseps = createArray()
       
    }
    
    func createArray() -> [Resep]{
        
        let resep1 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Nutrisi Rambut Alang-alang", contributor: "Charlie Chaplin", ratingAsli: "11", bintang: #imageLiteral(resourceName: "Hatipreview"), desc: "Alang-alang sebagai obat untuk menyuburkan rambut", cara: "1. Tumbuk Halus akar alang-alang\n2. Rebus sampai mendidih\n3. Basuh dikepala sampai 2 kali sehari.", materi1: "Alang-alang", materi2: "Air", materi3: "", takaran1: "20 g", takaran2: "1 gelas", takaran3: "")
        let resep2 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Demam", contributor: "Ricardo Milos", ratingAsli: "15", bintang: #imageLiteral(resourceName: "Hatipreview"), desc: "Alang-alang sebagai obat demam", cara: "1. Tumbuk Halus akar alang-alang\n2. Rebus sampai mendidih\n3. Saring air rebusan tersebut.\n4. 4. Minum selagi hangat", materi1: "Alang-alang", materi2: "Air", materi3: "", takaran1: "20 g", takaran2: "1 gelas", takaran3: "")
        let resep3 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Nutrisi Rambut Alang-alang", contributor: "Charlie Chaplin", ratingAsli: "11", bintang: #imageLiteral(resourceName: "Hatipreview"), desc: "Alang-alang sebagai obat untuk menyuburkan rambut", cara: "1. Tumbuk Halus akar alang-alang\n2. Rebus sampai mendidih\n3. Basuh dikepala sampai 2 kali sehari.", materi1: "Alang-alang", materi2: "Air", materi3: "", takaran1: "20 g", takaran2: "1 gelas", takaran3: "")
        
        
//        let resep3 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Racikan Pilek", contributor: "Jonathan Chris", ratingAsli: "4", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep4 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Batuk Berdahak", contributor: "Gachi Muchi", ratingAsli: "52", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep5 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Sakit Tenggorokan Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep6 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Flu Ringan", contributor: "Huey Keith", ratingAsli: "2", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep7 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Masuk Angin Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
        
        
        reseps.append(resep1)
        reseps.append(resep2)
        reseps.append(resep3)
//        reseps.append(resep4)
//        reseps.append(resep5)
//        reseps.append(resep6)
//        reseps.append(resep7)
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailResepViewController") as! DetailResepViewController
        
        viewController.judul = reseps[indexPath.row].title
        viewController.author = reseps[indexPath.row].contributor
        viewController.love = reseps[indexPath.row].ratingAsli
        viewController.detail = reseps[indexPath.row].desc
        viewController.cara = reseps[indexPath.row].cara
        viewController.materi1 = reseps[indexPath.row].materi1
        viewController.materi2 = reseps[indexPath.row].materi2
        viewController.materi3 = reseps[indexPath.row].materi3
        viewController.takaran1 = reseps[indexPath.row].takaran1
        viewController.takaran2 = reseps[indexPath.row].takaran2
        viewController.takaran3 = reseps[indexPath.row].takaran3
        
        print("tes", viewController.judul, viewController.author, viewController.love)
        
        self.navigationController?.pushViewController(viewController, animated: true)
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
