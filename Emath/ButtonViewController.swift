//
//  ButtonViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/16.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class ButtonViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Button_Divide_0(_ sender: AnyObject) {
        //Divide_0
        if (sender.identifier == "Divide_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Divide_0"), object: self)
        }
        //Root_0
        if (sender.identifier == "Root_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Root_0"), object: self)
        }
        //Root_x_y
        if (sender.identifier == "Root_x_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Root_x_y"), object: self)
        }
        //e_x
        if (sender.identifier == "e_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "e_x"), object: self)
        }
        //e_x_y
        if (sender.identifier == "e_x_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "e_x_y"), object: self)
        }
        //e__y
        if (sender.identifier == "e__y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "e__y"), object: self)
        }
        //integral_x_y
        if (sender.identifier == "integral_x_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "integral_x_y"), object: self)
        }
        //sum_x
        if (sender.identifier == "Sum_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Sum_x"), object: self)
        }
        //prod_x
        if (sender.identifier == "prod_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "prod_x"), object: self)
        }
        //Vector_x
        if (sender.identifier == "Vector_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Vector_x"), object: self)
        }
        //dot_y
        if (sender.identifier == "dot_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "dot_y"), object: self)
        }
        //log_x_y
        if (sender.identifier == "log_x_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "log_x_y"), object: self)
        }
        //ln_x
        if (sender.identifier == "ln_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ln_x"), object: self)
        }
        //min_x
        if (sender.identifier == "min_x"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "min_x"), object: self)
        }
        //max_y
        if (sender.identifier == "max_y"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "max_y"), object: self)
        }
        
        //add_0
        if (sender.identifier == "add_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "add_0"), object: self)
        }
        //Subtaction_0
        if (sender.identifier == "Subtaction_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Subtaction_0"), object: self)
        }
        //Summation_0
        if (sender.identifier == "Summation_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "Summation_0"), object: self)
        }
        //unequeal_0
        if (sender.identifier == "unequeal_0"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "unequeal_0"), object: self)
        }
        //wedge
        if (sender.identifier == "wedge"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "wedge"), object: self)
        }
        //vee
        if (sender.identifier == "vee"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "vee"), object: self)
        }
        //infy
        if (sender.identifier == "infy"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "infy"), object: self)
        }
        
        //variable
        
        //varphi
        if (sender.identifier == "varphi"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "varphi"), object: self)
        }
        
        //sigma
        if (sender.identifier == "sigma"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "sigma"), object: self)
        }
        //pi
        if (sender.identifier == "pi"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "pi"), object: self)
        }
        //lambda
        if (sender.identifier == "lambda"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "lambda"), object: self)
        }
        //eta
        if (sender.identifier == "theta"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "theta"), object: self)
        }
        //eta
        if (sender.identifier == "eta"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "eta"), object: self)
        }
        //varepsilon
        if (sender.identifier == "varepsilon"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "varepsilon"), object: self)
        }
        //delta
        if (sender.identifier == "delta"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "delta"), object: self)
        }
        //beta
        if (sender.identifier == "beta"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "beta"), object: self)
        }
        //alpha
        if (sender.identifier == "alpha"){
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "alpha"), object: self)
        }
        
        //ClickView
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ClickView"), object: self)

        
    }
    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }
}
