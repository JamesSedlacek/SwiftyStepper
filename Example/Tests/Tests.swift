import XCTest
import SwiftyStepper

class Tests: XCTestCase {
    
    func testDefaultValues() {
        let stepper = SwiftyStepper()
        XCTAssert(stepper.value == 0)
        XCTAssert(stepper.maximumValue == 1)
        XCTAssert(stepper.minimumValue == 0)
        XCTAssert(stepper.stepValue == 0.1)
        XCTAssert(stepper.decimalPlaces == 1)
        XCTAssert(stepper.borderWidth == 1)
        XCTAssert(stepper.buttonPadding == 10)
    }
    
    func testCountLabelText() {
        let stepper = SwiftyStepper()
        
        stepper.decimalPlaces = 0
        stepper.value = 5
        XCTAssert(stepper.countLabelText == "5")
        
        stepper.decimalPlaces = 1
        stepper.value = 5.3
        XCTAssert(stepper.countLabelText == "5.3")
        
        stepper.decimalPlaces = 2
        stepper.value = 5.46
        XCTAssert(stepper.countLabelText == "5.46")
    }
    
    // TODO: test Vertical & Horizontal Modes
}
