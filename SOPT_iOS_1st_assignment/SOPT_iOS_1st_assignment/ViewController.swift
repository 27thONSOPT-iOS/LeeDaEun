//
//  ViewController.swift
//  SOPT_iOS_1st_assignment
//
//  Created by DANNA LEE on 2020/10/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageSOPT: UIImageView!
    @IBOutlet weak var labelPart: UILabel!
    @IBOutlet weak var labeliOS: UILabel!
    @IBOutlet weak var labelHelloDaeun: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func TouchUpLogin(_ sender: Any) {
        guard let dvc = self.storyboard?.instantiateViewController(identifier: "navigationController") else {
            return
        }
        dvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        dvc.modalPresentationStyle = UIModalPresentationStyle.fullScreen
        self.present(dvc, animated: true, completion: nil)
    }
    
}

