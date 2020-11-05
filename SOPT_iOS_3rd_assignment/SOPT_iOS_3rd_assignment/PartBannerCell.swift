//
//  PartBannerCell.swift
//  SOPT_iOS_3rd_assignment
//
//  Created by DANNA LEE on 2020/11/05.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
    
    @IBOutlet weak var partImageView: UIImageView!
    
    func setImage(imageName: String) {
        partImageView.image = UIImage(named: imageName)
        
    }
}
