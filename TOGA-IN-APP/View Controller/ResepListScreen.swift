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
    
    @IBAction func heartPress(_ sender: UIButton) {
        if sender.currentImage == UIImage(named: "IconHati") {
            sender.setImage(UIImage(named: "IconHati-Disabled"), for: UIControl.State.normal)
        } else {
            sender.setImage(UIImage(named: "IconHati"), for: UIControl.State.normal)
        }
    }
    
    func createArray() -> [Resep]{
        
        let resep1 = Resep(image: #imageLiteral(resourceName: "alang alang"), title: "Nutrisi Rambut Alang-alang", contributor: "Admin", ratingAsli: "11", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Alang-alang sebagai obat untuk menyuburkan rambut", cara: "1. Tumbuk Halus akar alang-alang\n2. Rebus sampai mendidih\n3. Basuh dikepala sampai 2 kali sehari.", materi1: "Alang-alang", materi2: "Air", materi3: "", takaran1: "20 g", takaran2: "1 gelas", takaran3: "")
        let resep2 = Resep(image: #imageLiteral(resourceName: "alang-alang"), title: "Obat Demam", contributor: "Ricardo Milos", ratingAsli: "15", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Alang-alang sebagai obat demam", cara: "1. Tumbuk Halus akar alang-alang\n2. Rebus sampai mendidih\n3. Saring air rebusan tersebut.\n4. 4. Minum selagi hangat", materi1: "Alang-alang", materi2: "Air", materi3: "", takaran1: "20 g", takaran2: "1 gelas", takaran3: "")
        let resep3 = Resep(image: #imageLiteral(resourceName: "Daun Saga-1"), title: "Tanaman saga sebagai obat sariawan", contributor: "Hadi Triyadi", ratingAsli: "13", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Daun saga dapat meredakan panas dalam dan menghilangkan sariawan", cara: "1. Keringkan daun saga selama 10 menit dibawah sinar matahari\n2. Saat agak layu, kumur sebagai obat sariawan.", materi1: "Daun Saga", materi2: "", materi3: "", takaran1: "5-10 lbr", takaran2: "", takaran3: "")
        let resep4 = Resep(image: #imageLiteral(resourceName: "obat kecap jeruk"), title: "Obat Batuk", contributor: "Admin", ratingAsli: "12", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Obat batuk mudah", cara: "1.Potong jeruk nipis menjadi setengah.\n2.Tuangkan kecap manis ke sendok makan.\n3.Peras  jeruk nipis ke sendok makan berisi kecap manis.\n4.Minum campuran tersebut", materi1: "Jeruk Nipis", materi2: "Kecap Manis/Madu", materi3: "", takaran1: "1 Buah", takaran2: "1 sdm", takaran3: "")
        let resep5 = Resep(image: #imageLiteral(resourceName: "jahe"), title: "Mengobati masuk angin", contributor: "Admin", ratingAsli: "0", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Manfaat jahe untuk menghangatkan tubuh dan menghilangkan masuk angin", cara: "1. Kupas dan iris batang serai dan Jahe merah.\n2. Rebus bersama selama  3 - 5 menit sampai berwarna kecoklatan.\n3. Saring dan tuang ke gelas sari-sarinya.\n4. Nikmati selagi hangat", materi1: "Serai", materi2: "Jahe Merah", materi3: "Air Panas", takaran1: "1 Batang", takaran2: "3-5 cm", takaran3: "Secukupnya")
        let resep6 = Resep(image: #imageLiteral(resourceName: "Talas"), title: "Umbi Talas sebagai obat maag", contributor: "Ricky Effendi", ratingAsli: "5", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Umbi Talas mengandung karbohidrat yang dapat menjadi pengganti nasi", cara: "1. Kupas umbi talas dan rendam serta cuci bersih getah yang ada\n2. Potong umbi talas menjadi potongan kecil\n3. Rebus umbi talas, dianjurkan untuk mengganti air saat memasaknya\n4. Nikmati  umbi talas rebus tanpa tambahan apapun", materi1: "Umbi Talas", materi2: "Air Putih", materi3: "", takaran1: "1 Buah", takaran2: "2 Gelas", takaran3: "")
        let resep7 = Resep(image: #imageLiteral(resourceName: "akar aren"), title: "Tanaman Aren sebagai obat batu ginjal", contributor: "Admin", ratingAsli: "3", bintang: #imageLiteral(resourceName: "HatiKecil"), desc: "Tanaman Aren dapat mermanfaat untuk menghancurkan batu ginjal", cara: "1. Cuci lalu potong kecil-kecil akar muda segar\n2. Rebus dengan dua  gelas air selama 15 menit\n3. Setelah dingin, saring lalu minum 2 hari sekali.", materi1: "Akar muda Segar", materi2: "Air Putih", materi3: "", takaran1: "25 g", takaran2: "2 gelas", takaran3: "")
        
        
//        let resep3 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Racikan Pilek", contributor: "Jonathan Chris", ratingAsli: "4", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep4 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Batuk Berdahak", contributor: "Gachi Muchi", ratingAsli: "52", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep5 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Sakit Tenggorokan Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep6 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Flu Ringan", contributor: "Huey Keith", ratingAsli: "2", bintang: #imageLiteral(resourceName: "Hatipreview"))
//        let resep7 = Resep(image: #imageLiteral(resourceName: "DummyGede"), title: "Obat Masuk Angin Alami", contributor: "Charlie Chaplin", ratingAsli: "18", bintang: #imageLiteral(resourceName: "Hatipreview"))
        
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let viewController = storyboard?.instantiateViewController(withIdentifier: "DetailResepViewController") as! DetailResepViewController
        
        viewController.image = reseps[indexPath.row].image
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

extension ResepListScreen: UISearchBarDelegate, UITextFieldDelegate{
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
