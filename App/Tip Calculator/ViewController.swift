//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Bhatt, Gaurang on 12/30/15.
//  Copyright © 2015 Gb0143. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTipPercentage: UILabel!
    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var txtBillAmount: UITextField!
    @IBOutlet weak var sldTip: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblTip.text = "$0.00"
        lblTipPercentage.text = "15%"
        lblTotal.text = "$0.00"
        txtBillAmount.becomeFirstResponder()
    }
    
    @IBAction func onChange(sender: AnyObject) {
        let billAmount = NSString(string: txtBillAmount.text!).doubleValue
        let tipPercentage = Int(sldTip.value)
        
        let tipAmount = billAmount * (Double(tipPercentage)/100)
        let totalAmount = billAmount + tipAmount
        
        lblTipPercentage.text = "\(tipPercentage)%"
        lblTip.text = String(format: "$%.2f", tipAmount)
        lblTotal.text = String(format: "$%.2f", totalAmount)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

