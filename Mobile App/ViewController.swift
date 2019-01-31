//
//  ViewController.swift
//  Mobile App
//
//  Created by Shivani Reddy Singireddy on 1/31/19.
//  Copyright © 2019 Shivani Reddy Singireddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var BillLabel: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalBill: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
       
        view.endEditing(true)
    }
    
    @IBAction func CalucaleTip(_ sender: Any) {
        //fetching the bill
        let bill = Double(BillLabel.text!) ?? 0
         let tipPercents = [0.1,0.15,0.2]
        let tip = bill*tipPercents[tipControl.selectedSegmentIndex]
        let totalAmount = bill + tip
       
        //Finally Updating values
        tipLabel.text = String(format: "$%.2f", tip)
        totalBill.text = String(format: "$%.2f", totalAmount)
    }
    
}

