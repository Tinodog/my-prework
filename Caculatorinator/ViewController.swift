//
//  ViewController.swift
//  Caculatorinator
//
//  Created by Fabian Cooper on 1/22/20.
//  Copyright © 2020 Fabian Cooper. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calTip(_ sender: Any) {
        
        let bill = Double(billField.text!) ?? 0
        //---------
        
        let tipPercentages = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentages [tipControl.selectedSegmentIndex]
        let total = bill + tip
        //---------
        
        tipLabel.text = String(format: "$%.f",  tip)
        totalLabel.text = String(format: "$%.f",  total)
    }
    
}

