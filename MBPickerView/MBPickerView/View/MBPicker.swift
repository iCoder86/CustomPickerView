//
//  MBPicker.swift
//  MBPickerView
//
//  Created by MB on 29/09/17.
//  Copyright © 2017 MB. All rights reserved.
//

import UIKit

class MBPicker: UIPickerView {
    var modelData: [DateModel]!
    let customWidth:CGFloat = 100
    let customHeight:CGFloat = 100
}

extension MBPicker: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return modelData.count
    }
}

extension MBPicker : UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: customWidth, height: customHeight))
        
        let topLabel = UILabel(frame: CGRect(x: 0, y: 10, width: customWidth, height: 20))
        topLabel.text = modelData[row].dayName
        topLabel.textColor = .black
        topLabel.textAlignment = .center
        topLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.thin)
        view.addSubview(topLabel)
        
        let middleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: customWidth, height: customHeight))
        middleLabel.text = modelData[row].price
        middleLabel.textColor = .black
        middleLabel.textAlignment = .center
        middleLabel.font = UIFont.systemFont(ofSize: 42, weight: UIFont.Weight.thin)
        view.addSubview(middleLabel)

        
        let bottomLabel = UILabel(frame: CGRect(x: 0, y: 78, width: customWidth, height: 20))
        bottomLabel.text = modelData[row].date
        bottomLabel.textColor = .black
        bottomLabel.textAlignment = .center
        bottomLabel.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.thin)
        view.addSubview(bottomLabel)

        view.transform =  CGAffineTransform(rotationAngle: 90 * (.pi/180))
        
        return view
    }
    
}
