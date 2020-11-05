//
//  Profile.swift
//  SOPT_iOS_3rd_assignment
//
//  Created by DANNA LEE on 2020/11/05.
//

import UIKit

struct Profile {
    var name: String
    var description : String
    var imageName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
