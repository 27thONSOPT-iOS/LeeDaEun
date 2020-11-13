//
//  LoginViewController.swift
//  SOPT_iOS_3rd_assignment
//
//  Created by DANNA LEE on 2020/11/13.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var partTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginTouchUp(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
