//
//  PickerViewTestViewController.swift
//  SOPT_iOS_3rd_Seminar
//
//  Created by DANNA LEE on 2020/10/31.
//

import UIKit

class PickerViewTestViewController: UIViewController {

    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    var parts : [Part] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPartData()
        initLayout()
        
        partPickerView.delegate = self
        partPickerView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func initLayout() {
        let initPart = parts[0]
        partImageView.image = initPart.makeImage()
        partNameLabel.text = initPart.partName
    }

    func setPartData() {
        parts.append(contentsOf: [
            Part(imageName: "plan", partName: "Plan"),
            Part(imageName: "design", partName: "Design"),
            Part(imageName: "server", partName: "Server"),
            Part(imageName: "ios", partName: "iOS"),
            Part(imageName: "android", partName: "Android"),
            Part(imageName: "web", partName: "Web")
        ])
        
    }
}

extension PickerViewTestViewController: UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    // PickerView의 컴포넌트 숫자를 지정해 주는 메소드
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView,

    numberOfRowsInComponent component: Int) -> Int {
    // PickerView의 각 컴포넌트에서 행의 개수를 지정해 주는 메소드
        return parts.count
    }
}

extension PickerViewTestViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row].partName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectPart = parts[row]
        
        self.partImageView.image = selectPart.makeImage()
        self.partNameLabel.text = selectPart.partName
    }
}
