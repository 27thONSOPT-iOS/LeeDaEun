//
//  SignUpVC.swift
//  
//
//  Created by DANNA LEE on 2020/11/24.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var nameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    func successAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: { (action) in
            self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
            })
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func TouchUpRegister(_ sender: Any) {
        
        guard let emailText = emailTextField.text,
              let passwordText = passwordTextField.text,
              let nameText = nameTextfield.text else {
            return
        }
        
        AuthService.shared.signUp(email: emailText,
                                  password: passwordText, userName: nameText) { (networkResult) in
            switch networkResult {
            case .success(let data):
                if let data = data as? SignUpData {
                    self.successAlert(title: "회원가입 성공", message: "\(data.userName)님 회원가입 성공!")
                    UserDefaults.standard.set(data.userName, forKey: "userName")
                }
                

            case .requestErr(let msg):
                if let message = msg as? String {
                    self.simpleAlert(title: "회원가입 실패", message: message)
                }
                print("requsetErr")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
    }
    
    
}
