//
//  TanamanTableViewCell.swift
//  TOGA-IN-APP
//
//  Created by Ricky Effendi on 29/04/19.
//  Copyright © 2019 Pramahadi Tama Putra. All rights reserved.
//

import UIKit

class TanamanTableViewCell: UITableViewCell {
    @IBOutlet weak var clCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension TanamanTableViewCell {
    func setCollectionViewDataSourceDelegate
        <D: UICollectionViewDelegate & UICollectionViewDataSource>
        (_ dataSourceDelegate: D, forRow row:Int)
    {
        clCollectionView.delegate = dataSourceDelegate
        clCollectionView.dataSource = dataSourceDelegate
        
        clCollectionView.reloadData()
    }
}
