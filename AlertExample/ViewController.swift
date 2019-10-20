////
//ViewController.swift
//AlertExample
//
//Created by Basel Baragabah on 20/10/2019.
//Copyright © 2019 Basel Baragabah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //How to use it ?
        //only call this function at anywhere on your project
       // and put the buttons as a string
        
        Alert.showAlertWithButtons(on: self, title: "هل تريد حذف الكل ؟", message: "", options: "لا","نعم") { (option) in
                 
                 switch(option) {
                    //mean the 1st button
                 case 0:
                     // No : do nothing
                     break
                     
                    //mean the 2nd button
                 case 1:
                     // Yes : Clear
                     break

                 
                 default:
                     break
                 }

             }    }


}

