//
//  AnimationTestVC.swift
//  SOPT_iOS_4th_Seminar
//
//  Created by DANNA LEE on 2020/11/07.
//

import UIKit

class AnimationTestVC: UIViewController {
    @IBOutlet weak var moonImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initPosition() {
        moonImageView.frame = CGRect(x: 87, y: 168, width: 240, height: 240)
    }

    @IBAction func touchUpStart(_ sender: Any) {
//        UIView.animate(withDuration: 2.0, animations: {
//            self.moonImageView.alpha = 0
//        })
//
//        UIView.animate(withDuration: 2.0, animations: {
//            self.moonImageView.alpha = 0
//            self.moonImageView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
//        }) { (finish) in
//            UIView.animate(withDuration: 1.0, animations: {
//                self.moonImageView.alpha = 1
//                self.initPosition()
//            }) {(finished) in
//                if finished {
//                    print("finished")
//                }
//            }
//        }
//    }
        
        let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
        let rotate = CGAffineTransform(rotationAngle: .pi)
        let move = CGAffineTransform(translationX: 20, y: 300)
        let combine = scale.concatenating(rotate).concatenating(move)
    
        UIView.animate(withDuration: 1.0, animations: {
//            self.moonImageView.transform = CGAffineTransform(scaleX: 2.0, y: 0.5)
//            self.moonImageView.transform = CGAffineTransform(translationX: 100, y: 300)
//            self.moonImageView.transform = CGAffineTransform(rotationAngle: .pi / 2)
            self.moonImageView.transform = combine
        })  {finished in
            UIView.animate(withDuration: 1.0) {
                self.moonImageView.transform = .identity
            }
        }
    }
}
