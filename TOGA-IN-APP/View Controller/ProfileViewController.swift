//
//  ProfileViewController.swift
//  TOGA-IN-APP
//
//  Created by Pramahadi Tama Putra on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var profileView: UIView!
    @IBOutlet weak var footerView: UIView!
    
    var namaTanaman: [String] = ["Jahe","Temulawak","Cabe","Pete","Jengkol"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if isLogin {
            profileView.isHidden = false
            self.tabBarController?.tabBar.isHidden = false
            footerView.isHidden = true
            loginView.isHidden = true
        } else {
            profileView.isHidden = true
            self.tabBarController?.tabBar.isHidden = true
            footerView.isHidden = true
            loginView.isHidden = false
        }
        
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.topItem?.title = "Profile"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        

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
