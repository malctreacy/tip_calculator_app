//
//  ViewController.swift
//  tipster
//
//  Created by Malcolm Treacy on 3/31/19.
//  Copyright © 2019 Malcolm Treacy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billTotalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        // Closes the digit pad on tap of any area in the view.
        // print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculate_tip(_ sender: Any) {
        
        // 1. Get the bill amounts
        // let = const
        // ?? everything to the left of the symbols, if it is not
        // valid just change it to zero (eg. pasted text)
        let bill = Double(billField.text!) ?? 0
        
        // 2. Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // 3. Update the tip and totals
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

