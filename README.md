# SwiftyStepper

[![CI Status](https://img.shields.io/travis/JamesSedlacek/SwiftyStepper.svg?style=flat)](https://travis-ci.org/JamesSedlacek/SwiftyStepper)
[![Version](https://img.shields.io/cocoapods/v/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![License](https://img.shields.io/cocoapods/l/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)

## Examples

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/SwiftyStepperGif.gif?raw=true">
<br><br>
<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/StepperExample.png?raw=true">

## Installation

SwiftyStepper is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyStepper'
```

## Requirements
- iOS 15.0
- Swift 5.0
- Xcode 13.0

## Usage
Add a UIView to your Storyboard. <br>
Change the 'class' to 'SwiftyStepper'. <br>
Customize within the Attributes Inspector. <br>
Create & connect the IBAction for valueChanged. <br>

```swift
import UIKit
import SwiftyStepper

class ViewController: UIViewController {
  @IBAction func stepperValueChanged(_ sender: SwiftyStepper) {
      print("Value Changed to: \(sender.value)")
  }
}
```


## Customize

Attributes Inspector: <br> <br>
<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/Designables.png?raw=true">

## Author

JamesSedlacek, jsedlacekjr@gmail.com

## License

SwiftyStepper is available under the MIT license. See the LICENSE file for more info.
