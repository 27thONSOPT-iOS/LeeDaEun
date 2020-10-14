//
//  RegisterViewController.swift
//  SOPT_iOS_1st_assignment
//
//  Created by DANNA LEE on 2020/10/15.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var textFieldPart: UITextField!
    @IBOutlet weak var textFieldBirthYear: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpSubmit(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
