<p align="center">
  <img src = "https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/SwiftyStepperBannerLogo.png?raw=true" height=250 width=500>
  <br><br>

  <img src="https://img.shields.io/cocoapods/v/SwiftyStepper.svg?style=flat" alt="Version" /> 
  <img src="https://img.shields.io/badge/swift-5.0-orange.svg" alt="swift 5.0 badge" />
  <img src="https://img.shields.io/badge/platform-iOS-lightgrey.svg" alt="platform iOS badge" />
  <img src="https://img.shields.io/badge/license-MIT-black.svg" alt="license MIT badge" /> 
  <br><br><br>
  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/SwiftyStepperGif.gif?raw=true">
  <br><br>
  <img src="https://github.com/JamesSedlacek/SwiftyStepper/blob/master/SwiftyStepper/Assets/StepperExample.png?raw=true">
</p>

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
- [x] Banner Image 
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
- [ ] Haptics
- [ ] Sound

## Author

JamesSedlacek, jsedlacekjr@gmail.com

## License

<details>
  <summary><strong>SwiftyStepper is available under the MIT license.</strong></summary>
  <br>

Copyright (c) 2021 JamesSedlacek <jsedlacekjr@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

</details>
