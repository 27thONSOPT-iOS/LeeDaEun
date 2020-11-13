//
//  HomeViewController.swift
//  SOPT_iOS_3rd_assignment
//
//  Created by DANNA LEE on 2020/11/13.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTouchUp(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") else {
            return
        }
        dvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        dvc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
    
}
