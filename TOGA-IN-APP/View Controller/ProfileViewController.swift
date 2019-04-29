//
//  ProfileViewController.swift
//  TOGA-IN-APP
//
//  Created by Pramahadi Tama Putra on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var namaTanaman: [String] = ["Jahe","Temulawak","Cabe","Pete","Jengkol"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.shadowImage = UIImage()
        

        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namaTanaman.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfieCollectionViewCell
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let namaTanamanObat: String = namaTanaman[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(withIdentifier: "Jahe") as! PassingDataViewController
        
        viewController.name = namaTanamanObat
        
        self.navigationController?.pushViewController(viewController, animated: true)
        print("Di Tekan Index yang ke \(namaTanamanObat)")
        
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
