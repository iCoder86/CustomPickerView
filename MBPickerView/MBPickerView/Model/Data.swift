//
//  Data.swift
//  MBPickerView
//
//  Created by MB on 29/09/17.
//  Copyright © 2017 MB. All rights reserved.
//

import UIKit

class Data: NSObject {

    class func getData()->[DateModel] {
        var data = [DateModel]()
        data.append(DateModel(dayName: "Monday", price: "$100", date: "01 Jan 2017"))
        data.append(DateModel(dayName: "Tuesday", price: "$110", date: "02 Jan 2017"))
        data.append(DateModel(dayName: "Wednesday", price: "$120", date: "03 Jan 2017"))
        data.append(DateModel(dayName: "Thursday", price: "$130", date: "04 Jan 2017"))
        data.append(DateModel(dayName: "Friday", price: "$140", date: "05 Jan 2017"))
        data.append(DateModel(dayName: "Saturday", price: "$150", date: "06 Jan 2017"))
        return data
    }
}
