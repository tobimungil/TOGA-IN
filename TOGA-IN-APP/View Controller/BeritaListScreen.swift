//
//  BeritaListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class BeritaListScreen: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var sections: [String] = ["Berita Populer","Berita Terbaru"]
    var beritas: [Berita] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        beritas = createArray()

    }
    
    func createArray() -> [Berita]{
        
        var tempBerita: [Berita] = []
        
        let berita1 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        let berita2 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "Tanaman ini dapat menekan keinginan anda untuk merokok - KASKUS.id")
        let berita3 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "Tanaman Obat Keluarga dapat membantu persalinan - Kompas.com")
        let berita4 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        let berita5 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        
        tempBerita.append(berita1)
        tempBerita.append(berita2)
        tempBerita.append(berita3)
        tempBerita.append(berita4)
        tempBerita.append(berita5)
        
        return tempBerita
    }
    
}

extension BeritaListScreen: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
       return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let berita = beritas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeritaCell") as! BeritaCell
        
        cell.setBerita(berita: berita)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
