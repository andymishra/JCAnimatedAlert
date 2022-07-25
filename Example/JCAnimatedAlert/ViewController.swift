//
//  ViewController.swift
//  JCAnimatedAlert
//
//  Created by andymishra on 08/29/2018.
//  Copyright (c) 2018 andymishra. All rights reserved.
//

import UIKit
import JCAnimatedAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func basicAlertAction(_ sender: Any) {
        _ = JCAnimatedAlert().showAlert("Basic Alert", subTitle: "Animated Subtitle", style: AlertStyle.none)
    }
    
    @IBAction func sucessMessageAlertAction(_ sender: Any) {
        _ = JCAnimatedAlert().showAlert("Success", subTitle: "Success Animated Subtitle", style: AlertStyle.success)
        
    }
    
    @IBAction func errorMessageAlertAction(_ sender: Any) {
        JCAnimatedAlert().showAlert("Warning", subTitle: "this will permanently delete!", style: AlertStyle.warning, buttonTitle:"Cancel", buttonColor:UIColor.colorFromRGB(0xD0D0D0) , otherButtonTitle:  "Yes, delete it!", otherButtonColor: UIColor.colorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
                
                print("Cancel Button  Pressed")
            }
            else {
                _ = JCAnimatedAlert().showAlert("Deleted!", subTitle: "Your  file has been deleted!", style: AlertStyle.success)
            }
        }
    }
}

