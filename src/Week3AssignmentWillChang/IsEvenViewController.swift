//
//  IsEvenViewController.swift
//  Week3AssignmentWillChang
//
//  Created by William Chang on 1/9/16.
//  Copyright © 2016 WillChang. All rights reserved.
//

import UIKit

class IsEvenViewController: UIViewController {
    @IBOutlet weak var isEvenLabel: UILabel!
    @IBOutlet weak var numberTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func displayIfNumberIsEven(sender: AnyObject) {
        if let validNumber = Int(numberTextField.text!){
            if validNumber%2 == 0{
                isEvenLabel.text = "Number is Even"
            } else {
                isEvenLabel.text = "Number is Odd"
            }
        }
    }

}