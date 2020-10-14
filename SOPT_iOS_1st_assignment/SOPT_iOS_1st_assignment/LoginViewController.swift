
//
//  LoginViewController.swift
//  SOPT_iOS_1st_assignment
//
//  Created by DANNA LEE on 2020/10/15.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldPart: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpLogin(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func touchUpRegister(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "RegisterViewController") else {
            return
        }
        self.navigationController?.pushViewController(dvc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
