//
//  ViewController.swift
//  Week3AssignmentWillChang
//
//  Created by William Chang on 1/9/16.
//  Copyright © 2016 WillChang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var helloWorldLabel: UILabel!
    @IBOutlet weak var drinkVoteDriveLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func triggerLabel(sender: AnyObject) {
        helloWorldLabel.hidden = false;
        //TODO 1
        //helloWorldLabel.text = "Hello World!";
        //TODO 2
     
        if let name = nameTextField?.text{
            if let age = Int(ageTextField.text!){
                helloWorldLabel.text = "Hello \(name), you are \(age) years old!";
            
                //TODO 3
                /*
                if age >= 21 {
                    drinkVoteDriveLabel.text = "You can drink";
                } else if age >= 18 {
                    drinkVoteDriveLabel.text = "You can vote";
                } else if age >= 16 {
                    drinkVoteDriveLabel.text = "You can drive";
                }
                */
                //TODO 4
                drinkVoteDriveLabel.hidden = false;
                if (age >= 16 && age <= 18) {
                    drinkVoteDriveLabel.text = "You can drive";
                } else if (age >= 18 && age <= 21) {
                    drinkVoteDriveLabel.text = "You can drive and vote";
                } else if age >= 21 {
                    drinkVoteDriveLabel.text = "You can drive, vote and drink (but not at the same time!)";
                } else {
                    drinkVoteDriveLabel.hidden = true;
                }
           }
        }
    }

}

