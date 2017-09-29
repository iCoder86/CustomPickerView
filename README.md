# CustomPickerView
Custom horizontal PickerView

<a href="https://imgflip.com/gif/1wqyi6"><img src="https://i.imgflip.com/1wqyi6.gif" title="made at imgflip.com"/></a>

# UIView transform

    var rotationAngle:CGFloat!
    rotationAngle = -90 * (.pi/180)

    let originalFrame = pickerView.frame

    pickerView.transform =  CGAffineTransform(rotationAngle: rotationAngle)
    pickerView.frame = originalFrame
