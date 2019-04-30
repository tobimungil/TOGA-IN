//
//  ProfileViewController.swift
//  TOGA-IN-APP
//
//  Created by Pramahadi Tama Putra on 28/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITextFieldDelegate {
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var profileView: UIView!
//    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var txtId: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var lblWarning: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    var namaTanaman: [String] = ["Jahe","Temulawak","Cabe","Pete","Jengkol"]
    var imageTanaman: [String] = ["DummyGede","DummyGede","DummyGede","DummyGede","DummyGede"]
    
    @IBAction func btnMasukPress(_ sender: UIButton) {
        
        if arrId.contains(txtId.text ?? "") {
            let index = arrId.index(of: txtId.text!)
            if txtPass.text == arrPass[index!] {
                isLogin = true
                lblWarning.isHidden = true
                
                profileView.isHidden = false
                navigationController?.navigationBar.topItem?.title = "Profile"
                self.tabBarController?.tabBar.isHidden = false
                //            footerView.isHidden = true
                loginView.isHidden = true
            } else {
                lblWarning.isHidden = false
                lblWarning.text = "Password anda salah"
            }
        } else {
            lblWarning.isHidden = false
            lblWarning.text = "ID tidak ditemukan"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblWarning.isHidden = true
        
        if isLogin {
            profileView.isHidden = false
            navigationController?.navigationBar.topItem?.title = "Profile"
            self.tabBarController?.tabBar.isHidden = false
//            footerView.isHidden = true
            loginView.isHidden = true
        } else {
            profileView.isHidden = true
            navigationController?.navigationBar.topItem?.title = ""
            self.tabBarController?.tabBar.isHidden = true
//            footerView.isHidden = true
            loginView.isHidden = false
        }
        
        navigationController?.navigationBar.shadowImage = UIImage()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namaTanaman.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfieCollectionViewCell
        
        cell.favoriteImage.image = UIImage(named: imageTanaman[indexPath.row])
        cell.favoriteLabel.text = namaTanaman[indexPath.row]
        
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
