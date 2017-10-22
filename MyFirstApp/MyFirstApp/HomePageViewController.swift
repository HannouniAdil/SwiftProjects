//
//  HomePageViewController.swift
//  MyFirstApp
//
//  Created by Adil on 10/10/17.
//  Copyright © 2017 Eureka System Solutions llc. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
 
    @IBOutlet weak var userLabel: UILabel!
    var infoObject:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if infoObject != nil {
            userLabel.text = infoObject
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
