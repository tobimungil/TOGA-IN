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
    
    
    let imgArray = ["alang alang", "Asam Jawa", "Daun Saga", "Jahe merah", "Talas"]
    let lblArray = ["Alang-alang", "Asem Jawa", "Saga", "Jahe Merah", "Talas"]
    let notesArray = ["Alang-alang yang dikonsumsi memiliki rasa sejuk, sama seperti saat kita mengonsumsi semangka atau timun. Berbagai kandungan di dalamnya membentuk sifat antipiretik yang berfungsi untuk menurunkan panas. Alang-alang pun memiliki sifat diuretik yang dapat meluruhkan kemih serta menghilangkan rasa haus.", "Asam menjadi buah yang umumnya digunakan sebagai bumbu dapur. Selain fungsi tersebut, asam pun bisa kamu konsumsi dalam bentuk buah segar. Kandungan berbagai macam vitamin di dalamnya termasuk vitamin B, vitamin C, zat antioksidan, beta karoten, dan mineral menyimpan banyak manfaat sehat untuk tubuhmu.", "Merupakan tanaman atau tumbuan liar yang sangat mudah di temui di area hutan-hutan atau ladang-ladang banyak juga tanaman ini di tanam di area sekitar rumah karena khasiat daun saga untuk kesehatan.", "Jahe merah merupakan tanaman yang hampir mirip dengan kunyit, tanaman ini biasanya di jadikan sebagai rempah-rempah yang sudah di kenal di seluruh belahan dunia. Jahe merah juga memiliki banyak manfaat bagi manusia, baik itu di konsumsi untuk anak-anak bahkan sampai orang dewasa.", "Talas sangat identik sebagai oleh-oleh khas Kota Bogor.Talas adalah jenis umbi-umbian yang memiliki kesamaan dengan kentang. Tanaman ini hanya tumbuh di beberapa negara, biasanya di negara tropis di Asia."]
    let khasiatArray = ["- Alang-alang sebagai obat untuk menyuburkan rambut\n- Alang-alang sebagai obat mimisan\n- Alang-alang sebagai obat peluruh kencing\n- Alang-alang sebagai obat peluruh kencing", "- Asem Jawa membantu melancarkan peredaran darah\n- Asem jawa untuk melancarkan ASI\n- Asem jawa untuk sebagai obat batuk\n- Asem jawa sebagai obat panas dalam", "- Tanaman Saga sebagai obat sariawan\n-Tanaman Saga sebagai obat tetes mata", "- Jahe merah sebagai obat sakit kepala karena kedinginan\n- Jahe merah sebagai meredakan perut mulas\n- Jahe merah sebagai meredakan perut mulas ", "- Umbi talas sebagai obat untuk maag\n- Umbi Talas sebagai obat BAB berdarah\n- Daun tanaman talas untuk membalut luka"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        materials = createArray()
        
        
    }
    
    func createArray() -> [Material]{
        
        
        
        let material1 = Material(image: #imageLiteral(resourceName: "alang alang"), title: "Alang-alang")
        let material2 = Material(image: #imageLiteral(resourceName: "Asam Jawa"), title: "Asam Jawa")
        let material3 = Material(image: #imageLiteral(resourceName: "berita 1"), title: "Daun Saga")
        let material4 = Material(image: #imageLiteral(resourceName: "Jahe merah"), title: "Jahe Merah")
        let material5 = Material(image: #imageLiteral(resourceName: "Talas"), title: "Talas")
        
        materials.append(material1)
        materials.append(material2)
        materials.append(material3)
        materials.append(material4)
        materials.append(material5)
        
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
        
        
            let viewController = storyboard?.instantiateViewController(withIdentifier: "detailMaterial") as! detailMaterial
        
        viewController.judul = lblArray[indexPath.row]
        viewController.img = imgArray[indexPath.row]
        viewController.detail = notesArray[indexPath.row]
        viewController.khasiat = khasiatArray[indexPath.row]
        
        self.navigationController?.pushViewController(viewController, animated: true)
//        self.navigationController?.present(viewController, animated: true, completion: nil)
        
        print(self.navigationController?.pushViewController(viewController, animated: true))
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



