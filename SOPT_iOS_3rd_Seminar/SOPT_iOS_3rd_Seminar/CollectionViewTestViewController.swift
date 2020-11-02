//
//  CollectionViewTestViewController.swift
//  SOPT_iOS_3rd_Seminar
//
//  Created by DANNA LEE on 2020/10/31.
//

import UIKit

class CollectionViewTestViewController: UIViewController {

    @IBOutlet weak var bannerCollectionView: UIImageView!
    @IBOutlet weak var bannerPageControl: UIPageControl!
    
    var banners: [String] = ["plan", "design","server","ios","android","web"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
