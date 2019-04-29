//
//  TestingViewController.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 29/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class TestingViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    let imgArray = ["thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman", "thumbnailTanaman"]
    let lblArray = ["Jahe", "Sirih", "Bawang", "Lemon"]
    
    let imgArray2 = ["thumbnailBerita", "thumbnailBerita", "thumbnailBerita"]
    let lblArray2 = ["Judul 1", "Judul 2", "Judul 3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "TanamanTableViewCell", for: indexPath) as! TanamanTableViewCell
            cell.clCollectionView.delegate = self
            cell.clCollectionView.dataSource = self
            cell.clCollectionView.tag = 0
            
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeritaTableViewCell", for: indexPath) as! BeritaTableViewCell
            cell.clCollectionView.delegate = self
            cell.clCollectionView.dataSource = self
                cell.clCollectionView.tag = 1
            
            return cell
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
