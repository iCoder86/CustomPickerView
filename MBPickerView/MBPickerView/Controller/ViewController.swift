//
//  ViewController.swift
//  MBPickerView
//
//  Created by MB on 29/09/17.
//  Copyright © 2017 MB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pickerView: UIPickerView!
    var mbPicker: MBPicker!
    
    var rotationAngle:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mbPicker = MBPicker()
        mbPicker.modelData = Data.getData()
        
        pickerView.delegate = mbPicker
        pickerView.dataSource = mbPicker
        
        rotationAngle = -90 * (.pi/180)
        
        let originalFrame = pickerView.frame
        
        pickerView.transform =  CGAffineTransform(rotationAngle: rotationAngle)
        pickerView.frame = originalFrame
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

