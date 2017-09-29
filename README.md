# CustomPickerView
Custom horizontal PickerView

# UIView transform

    var rotationAngle:CGFloat!
    rotationAngle = -90 * (.pi/180)

    let originalFrame = pickerView.frame

    pickerView.transform =  CGAffineTransform(rotationAngle: rotationAngle)
    pickerView.frame = originalFrame
