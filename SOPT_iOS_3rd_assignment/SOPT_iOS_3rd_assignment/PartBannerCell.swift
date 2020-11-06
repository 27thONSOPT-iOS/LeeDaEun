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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setImage(profile: Profile) {
        partImageView.image = profile.makeImage()
        nameLabel.text = profile.name
        descriptionLabel.text = profile.description
    }
    
    
}
