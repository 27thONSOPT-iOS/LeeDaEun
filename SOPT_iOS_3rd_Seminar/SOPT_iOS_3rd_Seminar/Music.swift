//
//  Music.swift
//  SOPT_iOS_3rd_Seminar
//
//  Created by DANNA LEE on 2020/10/31.
//

import UIKit

struct Music {
    var title : String
    var singer : String
    
    var albumImageName : String
    
    func makeAlbumImage() -> UIImage? {
        return UIImage(named: albumImageName)
    }
}
