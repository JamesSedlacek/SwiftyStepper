//
//  SwiftyStepper.swift
//  SwiftyStepper
//
//  Created by James Sedlacek on 12/24/21.
//

import UIKit

/**
 A stepper control provides a user interface for incrementing or decrementing a value.
 
 SwiftyStepper has a plus and minus button for incrementing and decrementing it's value.
 The value is displayed in the middle of the two buttons.
 */
@IBDesignable public final class SwiftyStepper: UIControl {
    
    // MARK: - Haptics
    
    /// This property enables haptic feedback when tapping on the buttons
    ///  The default value for this property is true
    @IBInspectable public var isHapticsEnabled: Bool = true
    
    public var hapticStyle: UIImpactFeedbackGenerator.FeedbackStyle = .light
    public var hapticIntensity: CGFloat = 1.0
    
    private func hapticsHandler() {
        if isHapticsEnabled {
            UIImpactFeedbackGenerator(style: hapticStyle)
                .impactOccurred(intensity: hapticIntensity)
        }
    }
    
    // MARK: - Value
    
    /**
     The numeric value of the stepper.
     
     When the value changes, the stepper sends the UIControlEventValueChanged flag to its target (see addTarget:action:forControlEvents:).
     
     The default value for this property is 0.
     */
    @IBInspectable public var value: Double = 0 {
        didSet {
            if let countLabel = countLabel {
                countLabel.text = String(format: "%.\(decimalPlaces)f", value)
            }
            if value != oldValue {
                sendActions(for: .valueChanged)
            }
        }
    }
    
    /// The highest possible value for the stepper.
    ///  The default value for this property is 1
    @IBInspectable public var maximumValue: Double = 1
    
    /// The lowest possible value for the stepper.
    ///  The default value for this property is 0
    @IBInspectable public var minimumValue: Double = 0
    
    /// The step or increment/decrement value for the stepper.
    ///  The default value for this property is 0.1
    @IBInspectable public var stepValue: Double = 0.1
    
    /// The number of decimal places that is displayed in the label for the value.
    ///  To display integers, set this property to zero
    ///  The default value for this property is 1
    @IBInspectable public var decimalPlaces: Int = 1
    
    // MARK: - Border
    
    /// The width of the border for the stepper
    ///  The default value for this property is 1
    @IBInspectable public var borderWidth: CGFloat = 1 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    /// The color of the border for the stepper
    ///  The default value for this property is `secondaryLabel`
    @IBInspectable public var borderColor: UIColor = UIColor.secondaryLabel {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    // MARK: - Label
    
    /// The Text for the countLabel
    ///  This is a get-only property
    ///  The default value for this property is "0.0"
    public var countLabelText: String {
        return countLabel.text ?? "0.0"
    }
    
    /// The color of the label in the center of the stepper
    ///  The default value for this property is `label`
    @IBInspectable public var labelColor: UIColor = UIColor.label {
        didSet {
            if let countLabel = countLabel {
                countLabel.textColor = labelColor
            }
        }
    }
    
    /// The font of the label in the center of the stepper
    ///  The default value for this property is `systemFont(ofSize: 25, weight: .semibold)`
    @IBInspectable public var labelFont: UIFont = UIFont.systemFont(ofSize: 25,
                                                                    weight: .semibold) {
        didSet {
            if let countLabel = countLabel {
                countLabel.font = labelFont
            }
        }
    }
    
    // MARK: - Buttons
    
    /// The color of the plus and minus buttons in the stepper
    ///  The default value for this property is `secondaryLabel`
    @IBInspectable public var buttonColor: UIColor = UIColor.secondaryLabel {
        didSet {
            if let minusButton = minusButton,
               let plusButton = plusButton {
                minusButton.tintColor = buttonColor
                plusButton.tintColor = buttonColor
            }
        }
    }
    
    /// The weight of the plus and minus buttons in the stepper
    ///  The default value for this property is `bold`
    @IBInspectable public var buttonWeight: UIImage.SymbolWeight = .bold {
        didSet {
            if let minusButton = minusButton,
               let plusButton = plusButton {
                let config = UIImage.SymbolConfiguration(weight: buttonWeight)
                let minusSymbol = UIImage(systemName: "minus",
                                          withConfiguration: config)
                let plusSymbol = UIImage(systemName: "plus",
                                         withConfiguration: config)
                minusButton.setImage(minusSymbol,
                                     for: .normal)
                plusButton.setImage(plusSymbol,
                                    for: .normal)
            }
        }
    }
    
    /**
     The padding of the plus and minus buttons in the stepper
     
     This is the leading constraint constant for the minus button
     This is also the trailing constraint constant for the plus button
     
     The default value for this property is 10
     */
    @IBInspectable public var buttonPadding: CGFloat = 10 {
        didSet {
            if let plusButtonPadding = plusButtonPadding,
               let minusButtonPadding = minusButtonPadding {
                plusButtonPadding.constant = buttonPadding
                minusButtonPadding.constant = buttonPadding
            }
        }
    }
    
    // MARK: - IBOutlets
    
    internal var view: UIView!
    @IBOutlet internal weak var countLabel: UILabel!
    @IBOutlet internal weak var minusButton: UIButton!
    @IBOutlet internal weak var plusButton: UIButton!
    @IBOutlet internal weak var plusButtonPadding: NSLayoutConstraint!
    @IBOutlet internal weak var minusButtonPadding: NSLayoutConstraint!
    
    // MARK: - IBActions
    
    /// This is the action for the plus button
    /// The value is incremented if it is less than the maximumValue property
    /// - Parameter sender: Plus UIButton
    @IBAction internal func plusTapped(_ sender: UIButton) {
        if value + stepValue > maximumValue { return }
        value += stepValue
        hapticsHandler()
    }
    
    /// This is the action for the minus button
    /// The value is decremented if it is greater than the minimumValue property
    /// - Parameter sender: Minus UIButton
    @IBAction internal func minusTapped(_ sender: UIButton) {
        if value - stepValue < minimumValue { return }
        value -= stepValue
        hapticsHandler()
    }
    
    // MARK: - Initializers
    
    /// Returns an object initialized from data in a given unarchiver.
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    /// Initializes and returns a newly allocated view object with the specified frame rectangle.
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    // TODO: initializer for creating programmatically
    
    /// Called when a designable object is created in Interface Builder
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        xibSetup()
        view.prepareForInterfaceBuilder()
        setNeedsDisplay()
    }
    
    /// This is used for setting the cornerRadius of the view
    public override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.height / 2
        if let countLabel = countLabel {
            countLabel.text = String(format: "%.\(decimalPlaces)f", value)
        }
    }
    
    // MARK: - Xib
    
    /// Loads the view from XIB file
    ///  Adds the view as a subView
    private func xibSetup() {
        view = loadViewFromXib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.backgroundColor = .clear
        addSubview(view)
    }
    
    /// Loads & initializes  the XIB
    /// - Returns: The XIB view
    private func loadViewFromXib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "SwiftyStepper", bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }
}
