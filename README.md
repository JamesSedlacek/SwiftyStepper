# SwiftyStepper

[![Version](https://img.shields.io/cocoapods/v/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![License](https://img.shields.io/cocoapods/l/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyStepper.svg?style=flat)](https://cocoapods.org/pods/SwiftyStepper)
<img src="https://img.shields.io/badge/swift-5.0-orange.svg" alt="swift 5.0 badge" />
<br>

<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/SwiftyStepperGif.gif?raw=true">
<br>
<img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/StepperExample.png?raw=true">

## Installation

<details>
  <summary><strong>CocoaPods</strong></summary>
<br>
  
1. Download [CocoaPods](https://cocoapods.org)<br>
2. Run 'Pod init'
3. Add the following line to your Podfile:<br>
```ruby
pod 'SwiftyStepper'
```
4. Run 'Pod install'<br>
5. Open the XCWorkspace file that was created<br>
</details>

<details>
  <summary><strong>Carthage</strong></summary>
  <br>
  Coming Soon!
  <br>
</details>

<details>
  <summary><strong>Swift Package Manager</strong></summary>
  <br>
  Coming Soon!
  <br>
</details>

<details>
  <summary><strong>Manually</strong></summary>
  <br>
  Copy & paste these <a href="https://github.com/JamesSedlacek/SwiftyStepper/tree/master/Classes">Files</a> into your project.
  <br>
</details>


## Requirements
- iOS 15.0
- Swift 5.0
- Xcode 13.0

## Usage

<details>
  <summary><strong>1. Add a UIView to your Storyboard.</strong></summary>
  <br>

  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/AddView.png?raw=true">
  <br>
</details>


<details>
  <summary><strong>2. Change the UIView's Class to 'SwiftyStepper'.</strong></summary>
  <br>

  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/ChangeClass.png?raw=true">
  <br>
</details>

<details>
  <summary><strong>3. Add Constraints.</strong></summary>
  <br>

  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/Constraints.png?raw=true">
  <br>

</details>

<details>
  <summary><strong>4. Customize within the Attributes Inspector.</strong></summary>
  <br>
  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/Designables.png?raw=true">
  <br>
</details>

<details>
  <summary><strong>5. Create & connect the IBAction for valueChanged.</strong></summary>
  <br>
  
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
</details>


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
- [ ] SwiftUI Support
- [ ] Programmatic UIKit initializer

## Author

JamesSedlacek, jsedlacekjr@gmail.com

## License

SwiftyStepper is available under the MIT license. <br>
See the LICENSE file for more info.
