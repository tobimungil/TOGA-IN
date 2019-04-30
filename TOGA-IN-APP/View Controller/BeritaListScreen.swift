//
//  BeritaListScreen.swift
//  TOGA-IN-APP
//
//  Created by Mirza Fachreza 2 on 27/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit


class BeritaListScreen: UIViewController {

    let imgArray2 = ["berita 1", "berita 2", "berita3"]
    let lblArray2 = ["4 Tanaman Obat Mudah Didapat Ini Ampuh Sembuhkan Penyakit", "Jus Pahit yang Dapat Menurunkan Kadar Gula", "Kolaborasi POKTAN dan KKN Undip Tingkatkan Pemanfaatan Tanaman Obat Keluarga"]
    let urlArray2 = ["https://www.liputan6.com/citizen6/read/3918523/4-jenis-tanaman-obat-yang-bisa-ditanam-di-pekarangan-rumah-dan-manfaatnya", "https://www.cnnindonesia.com/gaya-hidup/20190124115546-255-363429/jus-pahit-penurun-kadar-gula-darah", "https://www.kompasiana.com/nadiaa/5c73afedc112fe501c76ac22/kolaborasi-poktan-dan-kkn-undip-tingkatkan-pemanfaatan-tanaman-obat-keluarga"]
    
    @IBOutlet weak var tableView: UITableView!
    var sections: [String] = ["Berita Populer","Berita Terbaru"]
    var judulBerita: [String] = ["Berita1","Berita2","Berita3"]
    var gambarBerita: [String] = ["DummyGede","DummyGede","DummyGede"]
    var beritas: [Berita] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.title = "Berita"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        beritas = createArray()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")

    }
    
    
    
    func createArray() -> [Berita]{

        var tempBerita: [Berita] = []

        let berita1 = Berita(image: #imageLiteral(resourceName: "artikelUtama"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        let berita2 = Berita(image: #imageLiteral(resourceName: "DummyGede"), title: "Tanaman ini dapat menekan keinginan anda untuk merokok - KASKUS.id")
        let berita3 = Berita(image: #imageLiteral(resourceName: "DummyGede"), title: "Tanaman Obat Keluarga dapat membantu persalinan - Kompas.com")
        let berita4 = Berita(image: #imageLiteral(resourceName: "DummyGede"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        let berita5 = Berita(image: #imageLiteral(resourceName: "DummyGede"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")

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
//       return 4
        
//        return judulBerita.count
        return lblArray2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let berita = beritas[indexPath.row]
//        let berita = judulBerita[indexPath.row]
//        let gberita = gambarBerita[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeritaCell") as! BeritaCell
        
        
//        cell.beritaJudul.text = "\(berita)"
//        cell.beritaGambar.image = UIImage(named: "\(gberita)")
        
        cell.beritaGambar.image = UIImage(named: imgArray2[indexPath.row])
        cell.beritaJudul.text = lblArray2[indexPath.row]
        
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let viewController = storyboard?.instantiateViewController(withIdentifier: "Jahe") as! PassingDataViewController
//
//
//
//        viewController.name = "BERITA"
//
//        self.navigationController?.pushViewController(viewController, animated: true)
        
        guard let url = URL(string: urlArray2[indexPath.row]) else { return }
        UIApplication.shared.open(url)
        
    }
}
