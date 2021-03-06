//
//  ViewController.swift
//  SOPT_iOS_3rd_assignment
//
//  Created by DANNA LEE on 2020/11/05.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var partCollecionView: UICollectionView!
    
    var profileData : [Profile] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setProfileData()
        partCollecionView.delegate = self
        partCollecionView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func setProfileData() {
        profileData.append(contentsOf: [
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok"),
            Profile(name: "이주혁", description: "#하 #팟장님 #살려주세요", imageName: "juhyeok")
        ])
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return profileData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PartBannerCell.identifier, for: indexPath) as? PartBannerCell
        else {
            return UICollectionViewCell()
        }
        cell.setImage(profile: profileData[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BannerCell.identifier, for: indexPath) as! BannerCell
        
        return headerView
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth : CGFloat = (collectionView.frame.width - 48 - 27)/2
        let cellHeight : CGFloat = cellWidth * 1.5
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 27
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 41, left: 24, bottom: 41, right: 24)
    }

}

