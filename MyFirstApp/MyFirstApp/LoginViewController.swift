//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Adil on 9/30/17.
//  Copyright © 2017 Eureka System Solutions llc. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usrName: UITextField!
    @IBOutlet weak var pwTxtField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func logInFunc(_ sender: UIButton) {
        
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let userEmailStored = UserDefaults.standard.object(forKey: "userName");
        let userPasswordStored = UserDefaults.standard.object(forKey: "passWord");
        
                let usernameObject = UserDefaults.standard.object(forKey: "userName")
                if let usr = usernameObject as? NSArray {
                    print(usr)
        }
                    let pwObject = UserDefaults.standard.object(forKey: "passWord")
                    if let pw = pwObject as? NSArray {
                        print(pw)
                    }
//        puts(userEmailStored);
//        puts(userPasswordStored);
//
//        let userEmail = usrName.text;
//        let userPassword = pwTxtField.text;
//
//        if userEmail != "" && userPassword != ""
//        {
//            if(userEmail == userEmailStored && userPassword == userPasswordStored){
//                //let usr = userEmail?.components(separatedBy: "@")
//                //                messageLabel.text = "Welcome back " + usr![0]
//                //
//                //                UserDefaults.standard.set(usr, forKey: "array");
//                //
//                UserDefaults.standard.set(true, forKey: "isUserLoggedIn");
//                UserDefaults.standard.synchronize();
//                self.dismiss(animated: true, completion: nil);
//            }
//        } else
//        {
//            messageLabel.text = "Please enter username/pw"
//        }
        
        
//        let arrayObject = UserDefaults.standard.object(forKey: "array")
//        if let array = arrayObject as? NSArray {
//            print(array)
//        }

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "HomePageViewController" {
            if let homepgVC = segue.destination as? HomePageViewController {
                homepgVC.infoObject = usrName.text
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

