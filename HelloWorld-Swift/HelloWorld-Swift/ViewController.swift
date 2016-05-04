//
//  ViewController.swift
//  HelloWorld-Swift
//
//  Created by Brian Bansenauer on 5/3/15.
//  Copyright (c) 2015 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var clear: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Say hello on button tap
    @IBAction func showOutput(sender: AnyObject) {
        if(txtLastName.text == "" || txtName.text == "" ){
            lblOutput.text = "Hello World!"
        
        }
        else{
            lblOutput.text = "Hello \(txtName.text!) \(txtLastName.text!).";
        }
    }
    @IBAction func clearText(sender: AnyObject) {
        lblOutput.text="Hello"
        txtLastName.text=""
        txtName.text=""
    }
    
    //Hide the on-screen keyboard
    @IBAction func backgroundTap(sender: AnyObject){
        self.view.endEditing(true);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

