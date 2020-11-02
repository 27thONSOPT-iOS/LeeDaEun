//
//  PartBannerCell.swift
//  SOPT_iOS_3rd_Seminar
//
//  Created by DANNA LEE on 2020/10/31.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
    
    @IBOutlet weak var partImageView: PartBannerCell!
    
    func setImage(imageName: String) {
        partImageview.image = UIImage(named: imageName)
    }
    
}
