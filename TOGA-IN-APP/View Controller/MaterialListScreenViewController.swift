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
     let kontraArray = ["Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.","Wanita hamil dilarang makan daging buah asam yang sudah tua.","Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.","Konsumsi harus dibatasi bagi penyandang diabetes dan hipertensi.","Mengonsumsi talas harus keadaan matang dan getah yang ada harus dihilangkan dahulu."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.title = "Material"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        materials = createArray()
        
        
    }
    
    func createArray() -> [Material]{
        
        
        
//        let material1 = Material(image: #imageLiteral(resourceName: "alang alang"), title: "Alang-alang")
//        let material2 = Material(image: #imageLiteral(resourceName: "Asam Jawa"), title: "Asam Jawa")
//        let material3 = Material(image: #imageLiteral(resourceName: "berita 1"), title: "Daun Saga")
//        let material4 = Material(image: #imageLiteral(resourceName: "Jahe merah"), title: "Jahe Merah")
//        let material5 = Material(image: #imageLiteral(resourceName: "Talas"), title: "Talas")
        
        let material1 = Material(image: #imageLiteral(resourceName: "alang alang"), title: "Alang-Alang", desc: "Alang-alang yang dikonsumsi memiliki rasa sejuk, sama seperti saat kita mengonsumsi semangka atau timun. Berbagai kandungan di dalamnya membentuk sifat antipiretik yang berfungsi untuk menurunkan panas. Alang-alang pun memiliki sifat diuretik yang dapat meluruhkan kemih serta menghilangkan rasa haus.", khasiat: "- Alang-alang sebagai obat untuk menyuburkan rambut\n- Alang-alang sebagai obat mimisan\n- Alang-alang sebagai obat peluruh kencing\n- Alang-alang sebagai obat peluruh kencing", kontra: "Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.")
        let material2 = Material(image: #imageLiteral(resourceName: "Asam Jawa"), title: "Asam Jawa", desc: "Asam menjadi buah yang umumnya digunakan sebagai bumbu dapur. Selain fungsi tersebut, asam pun bisa kamu konsumsi dalam bentuk buah segar. Kandungan berbagai macam vitamin di dalamnya termasuk vitamin B, vitamin C, zat antioksidan, beta karoten, dan mineral menyimpan banyak manfaat sehat untuk tubuhmu.", khasiat: "- Asem Jawa membantu melancarkan peredaran darah\n- Asem jawa untuk melancarkan ASI\n- Asem jawa untuk sebagai obat batuk\n- Asem jawa sebagai obat panas dalam", kontra: "Wanita hamil dilarang makan daging buah asam yang sudah tua.")
        let material3 = Material(image: #imageLiteral(resourceName: "berita 1"), title: "Daun Saga", desc: "Merupakan tanaman atau tumbuan liar yang sangat mudah di temui di area hutan-hutan atau ladang-ladang banyak juga tanaman ini di tanam di area sekitar rumah karena khasiat daun saga untuk kesehatan.", khasiat:" - Tanaman Saga sebagai obat sariawan\n-Tanaman Saga sebagai obat tetes mata", kontra: "Belum ada literatur yang menyebutkan adanya kontradiksi maupun efek samping.Dianjurkan untuk tidak mengonsumsi dengan dosis yang berlebihan.")
        let material4 = Material(image: #imageLiteral(resourceName: "Jahe merah"), title: "Jahe Merah", desc: "Jahe merah merupakan tanaman yang hampir mirip dengan kunyit, tanaman ini biasanya di jadikan sebagai rempah-rempah yang sudah di kenal di seluruh belahan dunia. Jahe merah juga memiliki banyak manfaat bagi manusia, baik itu di konsumsi untuk anak-anak bahkan sampai orang dewasa.", khasiat: "- Jahe merah sebagai obat sakit kepala karena kedinginan\n- Jahe merah sebagai meredakan perut mulas\n- Jahe merah sebagai meredakan perut mulas", kontra: "Konsumsi harus dibatasi bagi penyandang diabetes dan hipertensi.")
        let material5 = Material(image: #imageLiteral(resourceName: "Daun Saga"), title: "Talas", desc: "Talas sangat identik sebagai oleh-oleh khas Kota Bogor.Talas adalah jenis umbi-umbian yang memiliki kesamaan dengan kentang. Tanaman ini hanya tumbuh di beberapa negara, biasanya di negara tropis di Asia.", khasiat: "- Umbi talas sebagai obat untuk maag\n- Umbi Talas sebagai obat BAB berdarah\n- Daun tanaman talas untuk membalut luka.", kontra: "Mengonsumsi talas harus keadaan matang dan getah yang ada harus dihilangkan dahulu.")
        let material6 = Material(image: #imageLiteral(resourceName: "Pohon-Aren"), title: "Aren", desc: "Gula aren merupakan salah satu jenis gula alami yang diproduksi dan dibuat dengan menggunakan bahan alami dari buah aren. Berbeda dengan gula putih biasa yang dibuat dari batang tebu, gula aren memiliki warna merah dan memiliki tekstur yang lebih kasar serta tidak berbentuk Kristal seperti gula tebu.", khasiat: "- Gula Aren sebagai pengobat Luka.\n - Gula Aren sebagai obat batu ginjal. \n- Gula Aren sebagai obat sariawan. \n- Gula Aren sebagai obat pencahar", kontra: "Air nira sangat disukai oleh bakteri/mikroba/jasad renik yang menyebabkan kerusakan dan perubahan sifat nira tersebut. oleh karena itu, Harus berhati-hati dalam mengkonsumsi nira aren terutama yang telah mengalami fermentasi. Gula Aren dapat dijadikan pengganti gula putih bagi penderita diabetes, namun tetap perlu dijaga dosisnya agar jangan berlebihan.")
        let material7 = Material(image: #imageLiteral(resourceName: "Lidah Buaya"), title: "Lidah Buaya", desc: "Lidah buaya sudah dikenal banyak orang sebagai salah satu tumbuhan yang kaya akan manfaat, khususnya untuk kecantikan. Tidak heran bila sekarang ini produk kecantikan yang terbuat dari lidah buaya semakin banyak peminatnya.", khasiat: "- Lidah buaya Mempercepat penyembuhan luka bakar. \n- Lidah buaya untuk Mengurangi plak gigi. \n- Lidah buaya untuk Mengobati Sariawan. \n- Lidah buaya untuk Meredakan Sembelit", kontra: "Harus membersihkan lapisan luarnya untuk menghindari racun Aloin yang dapat berbahaya.")
        let material8 =  Material(image: #imageLiteral(resourceName: "Sirih"), title: "Sirih", desc: "Daun sirih dikenal akan sifat anti-septik, anti-inflamasi, dan pendingin kulit. Khasiatnya tak terbatas di permukaan tubuh. Jika dimakan atau diminum air rebusannya, manfaat daun sirih juga akan terasa untuk organ-organ tubuh.", khasiat: "- Daun Sirih sebagai penawar rasa sakit akibat luka dan memar. \n- Daun Sirih untuk Meringankan sembelit. \n- Daun Sirih untuk Meningkatkan Nafsu Makan. \n- Daun sirih Membantu Menghentikan aliran darah saat mimisan", kontra: "mengunyah tembakau bersama dengan daun sirih dalam waktu lama dapat meningkatkan resiko kanker mulut.\nMengunyah sirih secara berlebihan dalam jangka waktu lama dapat menyebabkan karies gigi dan masalah gusi")
        let material9 =  Material(image: #imageLiteral(resourceName: "Seledri"), title: "Seledri", desc: " Sayuran ini sering dijadikan tambahan untuk mempercantik makanan atau teman bawang kering dalam kuah bakso. Siapa sangka daun hijau keriting kecil ini memiliki kandunga manfaat yang mengejutkan bagi tubuh", khasiat: "- Antiseptik\n- Mencegah kanker\n- Menurunkan Tekanan Darah", kontra: "Biji seledri mengandung minyak atsiri, flaconoid, coumarin dan asam linoleat. Dengan demikian setidaknya seledri tidak dikonsumsi oleh wanita hamil karena dapat menyebabkan kontraksi pada rahim")
        let material10 = Material(image: #imageLiteral(resourceName: "Kayu Manis"), title: "Kayu Manis", desc: "Kayu manis merupakan salah satu jenis rempah-rempah yang biasa digunakan sebagai bumbu dalam berbagai jenis makanan karena memiliki aroma dan rasa yang enak. Selain menambah rasa dan memiliki aroma yang sedap, kayu manis ternyata memiliki berbagai manfaat untuk tubuh. ", khasiat: "- Mencegah Diabetes.\n- Mencegah penyakit alzheimer.\n- Mengurangi pendarahan menstruasi berat", kontra: "- Tidak semua kayu manis memiliki khasiat yang sama. Hanya kayu manis jenis Ceylon yang memberikan manfaat kesehatan.\n- Kayu manis Cassia (Kayu manis Cina) sebaiknya dikonsumsi dalam dosis yang sangat kecil, tidak lebih dari 2 sendok teh per hari. lebih dari itu Kayu manis jenis Cassia berpotensi menyebabkan toksisitas hati dan mengencerkan darah")
        
        materials.append(material1)
        materials.append(material2)
        materials.append(material3)
        materials.append(material4)
        materials.append(material5)
        materials.append(material6)
        materials.append(material7)
        materials.append(material8)
        materials.append(material9)
        materials.append(material10)
       
        
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
        viewController.kontra = materials[indexPath.row].kontra
        
        self.navigationController?.pushViewController(viewController, animated: true)
//        self.navigationController?.present(viewController, animated: true, completion: nil)
        
//        print(self.navigationController?.pushViewController(viewController, animated: true))
    }
    
    
}

extension MaterialListScreen: UISearchBarDelegate, UITextFieldDelegate{
    
    
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}



