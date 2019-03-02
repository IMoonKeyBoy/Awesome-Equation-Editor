//
//  AboutNSWindowController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/19.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class AboutNSWindowController: NSWindowController {

    class func loadFromNib()->AboutNSWindowController{
        
        let vc = NSStoryboard(name: "Storyboard", bundle: nil).instantiateController(withIdentifier: "AboutNSWindowController")as! AboutNSWindowController
        return vc
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}
