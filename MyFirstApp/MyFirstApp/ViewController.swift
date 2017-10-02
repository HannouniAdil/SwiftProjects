//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Adil on 9/30/17.
//  Copyright © 2017 Eureka System Solutions llc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usrName: UITextField!
    @IBOutlet weak var pwTxtField: UITextField!
   
    @IBOutlet weak var messageLabel: UILabel!
    @IBAction func resetFunc(_ sender: Any) {
        usrName.text?.removeAll()
        pwTxtField.text?.removeAll()
        messageLabel.text = "Please enter your username/pw"
    }
    @IBAction func logInFunc(_ sender: Any) {
        if usrName.text != "" && pwTxtField.text != ""
        {
            let usr = usrName.text?.components(separatedBy: "@")
            messageLabel.text = "Welcome back " + usr![0]
            usrName.text?.removeAll()
            pwTxtField.text?.removeAll()
        } else
        {
            messageLabel.text = "Please enter username/pw"
        }

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

