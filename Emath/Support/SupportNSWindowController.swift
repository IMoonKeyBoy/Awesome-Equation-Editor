//
//  SupportNSWindowController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/19.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class SupportNSWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    }
    class func loadFromNib()->SupportNSWindowController{
        let vc = NSStoryboard(name: "Support", bundle: nil).instantiateController(withIdentifier: "SupportNSWindowController")as! SupportNSWindowController
        return vc
    }
}
