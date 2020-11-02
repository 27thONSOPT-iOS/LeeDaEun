//
//  Part.swift
//  SOPT_iOS_3rd_Seminar
//
//  Created by DANNA LEE on 2020/10/31.
//

import UIKit

struct Part {
    var imageName : String
    var partName :  String
    
    func makeImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
