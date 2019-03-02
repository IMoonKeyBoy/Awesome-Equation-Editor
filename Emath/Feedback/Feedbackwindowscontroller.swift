//
//  Feedbackwindowscontroller.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/19.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class Feedbackwindowscontroller: NSWindowController {

    class func loadFromNib()->Feedbackwindowscontroller{
        
        let vc = NSStoryboard(name: "Feedback", bundle: nil).instantiateController(withIdentifier: "Feedbackwindowscontroller")as! Feedbackwindowscontroller
        
        return vc
    }
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
