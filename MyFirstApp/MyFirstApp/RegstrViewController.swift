//
//  RegstrViewController.swift
//  MyFirstApp
//
//  Created by Adil on 10/14/17.
//  Copyright © 2017 Eureka System Solutions llc. All rights reserved.
//

import UIKit

class RegstrViewController: UIViewController {

    @IBOutlet weak var registerLogo: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var repeatPwTextField: UITextField!
    
    func displayAlertMessage(alertMessage: String){
        
        let myAlert = UIAlertController(title:"Alert", message: alertMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true, completion: nil);
    }
    
    func displayRegistrationConfirmation(alertMessage2: String){
    var myAlert2 = UIAlertController(title:"Alert", message: alertMessage2, preferredStyle: UIAlertControllerStyle.alert);
    
    let okAction2 = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){ action in
    self.dismiss(animated: true, completion: nil);
    }
    myAlert2.addAction(okAction2);
    self.present(myAlert2, animated:true, completion:nil);
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func register_data(_ sender: Any) {
        let username = usernameTextField.text;
        let passsword = pwTextField.text;
        let repetPw = repeatPwTextField.text;
    
        if((username?.isEmpty)! || (passsword?.isEmpty)! || (repetPw?.isEmpty)!){
            displayAlertMessage(alertMessage: "Please fill up the blank field");
            return;
        }
        
        
        else if(passsword != repetPw){
            self.displayAlertMessage(alertMessage: "Passwords are not identical");
            return;
        }
        else{
            UserDefaults.standard.set(passsword, forKey: "passsWord");
            UserDefaults.standard.set(username, forKey: "userName");
        
        
        UserDefaults.standard.synchronize();
        displayRegistrationConfirmation(alertMessage2: "Registration was successful")
            
        
           // return;
    
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
}
