//
//  TestingViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 29/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class TestingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    let imgArray = ["alang alang", "Asam Jawa", "Daun Saga", "Jahe merah", "Talas"]
    let lblArray = ["Alang-alang", "Asem Jawa", "Saga", "Jahe Merah", "Talas"]
    let notesArray = ["Alang-alang yang dikonsumsi memiliki rasa sejuk, sama seperti saat kita mengonsumsi semangka atau timun. Berbagai kandungan di dalamnya membentuk sifat antipiretik yang berfungsi untuk menurunkan panas. Alang-alang pun memiliki sifat diuretik yang dapat meluruhkan kemih serta menghilangkan rasa haus.", "Asam menjadi buah yang umumnya digunakan sebagai bumbu dapur. Selain fungsi tersebut, asam pun bisa kamu konsumsi dalam bentuk buah segar. Kandungan berbagai macam vitamin di dalamnya termasuk vitamin B, vitamin C, zat antioksidan, beta karoten, dan mineral menyimpan banyak manfaat sehat untuk tubuhmu.", "Merupakan tanaman atau tumbuan liar yang sangat mudah di temui di area hutan-hutan atau ladang-ladang banyak juga tanaman ini di tanam di area sekitar rumah karena khasiat daun saga untuk kesehatan.", "Jahe merah merupakan tanaman yang hampir mirip dengan kunyit, tanaman ini biasanya di jadikan sebagai rempah-rempah yang sudah di kenal di seluruh belahan dunia. Jahe merah juga memiliki banyak manfaat bagi manusia, baik itu di konsumsi untuk anak-anak bahkan sampai orang dewasa.", "Talas sangat identik sebagai oleh-oleh khas Kota Bogor.Talas adalah jenis umbi-umbian yang memiliki kesamaan dengan kentang. Tanaman ini hanya tumbuh di beberapa negara, biasanya di negara tropis di Asia."]
    let khasiatArray = ["- Alang-alang sebagai obat untuk menyuburkan rambut\n- Alang-alang sebagai obat mimisan\n- Alang-alang sebagai obat peluruh kencing\n- Alang-alang sebagai obat peluruh kencing", "- Asem Jawa membantu melancarkan peredaran darah\n- Asem jawa untuk melancarkan ASI\n- Asem jawa untuk sebagai obat batuk\n- Asem jawa sebagai obat panas dalam", "- Tanaman Saga sebagai obat sariawan\n-Tanaman Saga sebagai obat tetes mata", "- Jahe merah sebagai obat sakit kepala karena kedinginan\n- Jahe merah sebagai meredakan perut mulas\n- Jahe merah sebagai meredakan perut mulas ", "- Umbi talas sebagai obat untuk maag\n- Umbi Talas sebagai obat BAB berdarah\n- Daun tanaman talas untuk membalut luka"]
    
    let kontraArray = ["Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.","Wanita hamil dilarang makan daging buah asam yang sudah tua.","Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.","Konsumsi harus dibatasi bagi penyandang diabetes dan hipertensi.","Mengonsumsi talas harus keadaan matang dan getah yang ada harus dihilangkan dahulu."]
    
    let imgArray2 = ["berita 1", "berita 2", "berita3"]
    let lblArray2 = ["4 Tanaman Obat Mudah Didapat Ini Ampuh Sembuhkan Penyakit", "Jus Pahit yang Dapat Menurunkan Kadar Gula", "Kolaborasi POKTAN dan KKN Undip Tingkatkan Pemanfaatan Tanaman Obat Keluarga"]
    let urlArray2 = ["https://www.liputan6.com/citizen6/read/3918523/4-jenis-tanaman-obat-yang-bisa-ditanam-di-pekarangan-rumah-dan-manfaatnya", "https://www.cnnindonesia.com/gaya-hidup/20190124115546-255-363429/jus-pahit-penurun-kadar-gula-darah", "https://www.kompasiana.com/nadiaa/5c73afedc112fe501c76ac22/kolaborasi-poktan-dan-kkn-undip-tingkatkan-pemanfaatan-tanaman-obat-keluarga"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TanamanTableViewCell", for: indexPath) as! TanamanTableViewCell
            cell.clCollectionView.delegate = self
            cell.clCollectionView.dataSource = self
            cell.clCollectionView.tag = 0
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeritaTableViewCell", for: indexPath) as! BeritaTableViewCell
            cell.clCollectionView.delegate = self
            cell.clCollectionView.dataSource = self
            cell.clCollectionView.tag = 1
            cell.selectionStyle = UITableViewCell.SelectionStyle.none
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "detailTanamanViewController") as! DetailTanamanViewController
        
        if collectionView.tag == 0 {
            viewController.judul = lblArray[indexPath.row]
            viewController.img = UIImage(named: imgArray[indexPath.row])
            viewController.detail = notesArray[indexPath.row]
            viewController.khasiat = khasiatArray[indexPath.row]
//            viewController.kontra = kontraArray[indexPath.row]
            //viewController.kontra = kontraArray[indexPath.row]
            
            self.navigationController?.pushViewController(viewController, animated: true)
            
        } else {
            guard let url = URL(string: urlArray2[indexPath.row]) else { return }
            UIApplication.shared.open(url)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return imgArray.count
        } else {
            return imgArray2.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TanamanCollectionViewCell", for: indexPath) as! TanamanCollectionViewCell
            
            cell.imgTanaman.image = UIImage(named: imgArray[indexPath.row])
            cell.lblTanaman.text = lblArray[indexPath.row]
            
            
            
            return cell
        } else {
            var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BeritaCollectionViewCell", for: indexPath) as! BeritaCollectionViewCell
            
            cell.imgBerita.image = UIImage(named: imgArray2[indexPath.row])
            cell.lblBerita.text = lblArray2[indexPath.row]
            
            
            
            return cell
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if isLogin == false {
            print("tes")
        }
        
        let image: UIImage = UIImage(named: "LOGO-TOG")!
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.contentMode = .scaleAspectFit
        imageView.image = image
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.titleView = imageView
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

