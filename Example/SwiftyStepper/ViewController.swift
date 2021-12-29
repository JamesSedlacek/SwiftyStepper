//
//  ViewController.swift
//  SwiftyStepper
//
//  Created by JamesSedlacek on 12/26/2021.
//  Copyright (c) 2021 JamesSedlacek. All rights reserved.
//

import UIKit
import SwiftyStepper

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLabel: UILabel!
    
    @IBAction func stepperValueChanged(_ sender: SwiftyStepper) {
        totalPriceLabel.text = String(format: "$%0.2f", sender.value * 0.99)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

