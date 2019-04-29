//
//  HomeViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var imgTanaman = ["thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman"]
    @IBOutlet weak var tableView: UITableView!
    
    var beritas: [Berita] = []
    var sections: [String] = ["Berita Terbaru"]
    
    var lblTanaman = ["Jahe", "Sirih", "Kunyit", "Lengkuas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.title = "Home"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
//        tabBarController?.tabBar.isHidden = true

        beritas = createBeritaHome()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgTanaman.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "identTanaman", for: indexPath) as! HomeCollectionViewCell
        
        cell.imgTanaman.image = UIImage(named: imgTanaman[indexPath.row])
        cell.lblTanaman.text = lblTanaman[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let namaTanamanObat: String = lblTanaman[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: "detailTanamanViewController") as! DetailTanamanViewController
        
        viewController.lblJudulTanaman = namaTanamanObat
        
        self.navigationController?.pushViewController(viewController, animated: true)
        print("Di Tekan Index yang ke \(namaTanamanObat)")
        
    }
    
    func createBeritaHome() -> [Berita]{
        
        var tempBerita: [Berita] = []
        
        let berita1 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "BPOM melakukan razia terhadap beberapa Rumah Sakit di Jakarta - Tribunnews")
        let berita2 = Berita(image: #imageLiteral(resourceName: "dummyImage"), title: "Tanaman ini dapat menekan keinginan anda untuk merokok - KASKUS.id")
        
        tempBerita.append(berita1)
        tempBerita.append(berita2)
        
        return tempBerita
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sections[section]
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.beritas.count
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
