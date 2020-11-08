//
//  CustomTabBarController.swift
//  SOPT_iOS_4th_Seminar
//
//  Created by DANNA LEE on 2020/11/07.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabs()
    }
    

    func setTabs() {
        guard let greenVC = self.storyboard?.instantiateViewController(identifier: "GreenVC") as? GreenVC,
              let blueVC = self.storyboard?.instantiateViewController(identifier: "BlueVC") as? BlueVC else {
            return
        }
    
        greenVC.tabBarItem.title = "Home"
        greenVC.tabBarItem.image = UIImage(systemName: "house")
        greenVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        blueVC.tabBarItem.title = "Profile"
        blueVC.tabBarItem.image = UIImage(systemName: "person")
        blueVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
    
        setViewControllers([greenVC, blueVC], animated: true)
    }

}
