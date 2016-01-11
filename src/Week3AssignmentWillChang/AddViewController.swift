//
//  AddViewController.swift
//  Week3AssignmentWillChang
//
//  Created by William Chang on 1/9/16.
//  Copyright © 2016 WillChang. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!
    var sumTotal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addNumber(sender: AnyObject) {
        if let validNumber = Int(numberTextField.text!){
            sumTotal+=validNumber
            totalLabel.text = "\(sumTotal)";
        }
    }

}