//
//  DataModel.swift
//  MBPickerView
//
//  Created by MB on 29/09/17.
//  Copyright © 2017 MB. All rights reserved.
//

import UIKit

class DateModel: NSObject {
    var dayName = ""
    var price = ""
    var date = ""
    
    init(dayName:String, price:String, date:String) {
        self.dayName = dayName
        self.price = price
        self.date = date
    }
}
