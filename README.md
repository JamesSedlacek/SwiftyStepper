# SwiftyStepper

[![CI Status](https://img.shields.io/travis/JamesSedlacek/SwiftyStepper.svg?style=flat)](https://travis-ci.org/JamesSedlacek/SwiftyStepper)
[![Version](https://img.shields.io/cocoapods/v/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![License](https://img.shields.io/cocoapods/l/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)

<br>

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/SwiftyStepperGif.gif?raw=true">
<br>
<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/StepperExample.png?raw=true">

## Installation

SwiftyStepper is available through [CocoaPods](https://cocoapods.org). <br>

1. Download CocoaPods<br>
2. Run 'Pod init'
3. Add the following line to your Podfile:<br>
```ruby
pod 'SwiftyStepper'
```
4. Run 'Pod install'<br>
5. Open the XCWorkspace file that was created<br>

## Requirements
- iOS 15.0
- Swift 5.0
- Xcode 13.0

## Usage
1. Add a UIView to your Storyboard. <br>

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/AddView.png?raw=true">
<br>


2. Change the UIView's Class to 'SwiftyStepper'. <br>

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/ChangeClass.png?raw=true">
<br>


3. Add Constraints. <br>

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/Constraints.png?raw=true">
<br>


4. Customize within the Attributes Inspector. <br>
<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/Designables.png?raw=true">
<br>

5. Create & connect the IBAction for valueChanged. <br>
```swift
import UIKit
import SwiftyStepper

class ViewController: UIViewController {
  @IBAction func stepperValueChanged(_ sender: SwiftyStepper) {
      print("Value Changed to: \(sender.value)")
  }
}
```
<br>

## Contribution
Want to contribute? Here's what's on the TODO list:<br>

- [x] GIF Example
- [x] Usage Images 
- [ ] Documentation
- [ ] Tests
- [ ] SPM Support
- [ ] Carthage Support
- [ ] Shadows
- [ ] Vertical & Horizontal Modes
- [ ] Long Press Buttons
- [ ] Animations

## Author

JamesSedlacek, jsedlacekjr@gmail.com

## License

SwiftyStepper is available under the MIT license. <br>
See the LICENSE file for more info.
