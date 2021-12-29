//
//  SwiftyStepper.swift
//  SwiftyStepper
//
//  Created by James Sedlacek on 12/24/21.
//

import UIKit

@IBDesignable open class SwiftyStepper: UIControl {
    
    // MARK: - Properties
    
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
    
    @IBInspectable public var maximumValue: Double = 1
    
    @IBInspectable public var minimumValue: Double = 0
    
    @IBInspectable public var stepValue: Double = 0.1
    
    @IBInspectable public var decimalPlaces: Int = 1
    
    @IBInspectable public var borderWidth: CGFloat = 1 {
       didSet {
           layer.borderWidth = borderWidth
       }
    }
    
    @IBInspectable public var borderColor: UIColor = UIColor.secondaryLabel {
       didSet {
           layer.borderColor = borderColor.cgColor
       }
    }
    
    @IBInspectable public var labelColor: UIColor = UIColor.label {
       didSet {
           if let countLabel = countLabel {
               countLabel.textColor = labelColor
           }
       }
    }
    
    @IBInspectable public var labelFont: UIFont = UIFont.systemFont(ofSize: 25,
                                                                    weight: .semibold) {
       didSet {
           if let countLabel = countLabel {
               countLabel.font = labelFont
           }
       }
    }
    
    @IBInspectable public var buttonColor: UIColor = UIColor.secondaryLabel {
       didSet {
           if let minusButton = minusButton,
              let plusButton = plusButton {
               minusButton.tintColor = buttonColor
               plusButton.tintColor = buttonColor
           }
       }
    }
    
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
    
    private var view: UIView!
    @IBOutlet private weak var countLabel: UILabel!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var plusButtonPadding: NSLayoutConstraint!
    @IBOutlet private weak var minusButtonPadding: NSLayoutConstraint!
    
    // MARK: - IBActions
    
    @IBAction private func plusTapped(_ sender: UIButton) {
        if value + stepValue > maximumValue { return }
        value += stepValue
    }
    
    @IBAction private func minusTapped(_ sender: UIButton) {
        if value - stepValue < minimumValue { return }
        value -= stepValue
    }
    
    // MARK: - Initializers
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    // TODO: initializer for creating programmatically
    
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        nibSetup()
        view.prepareForInterfaceBuilder()
        setNeedsDisplay()
    }
    
    open override func layoutSubviews() {
        super.layoutSubviews()
        countLabel.text = String(format: "%.\(decimalPlaces)f", value)
        layer.cornerRadius = self.frame.height / 2
    }
    
    // MARK: - Nib
    
    private func nibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        view.backgroundColor = .clear
        addSubview(view)
    }

    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "SwiftyStepper", bundle: bundle)
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return nibView
    }
}
