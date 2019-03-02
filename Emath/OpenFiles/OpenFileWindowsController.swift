//
//  OpenFileWindowsController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/3/2.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class OpenFileWindowsController: NSWindowController {


    override func windowDidLoad() {
        super.windowDidLoad()
    }
    class func loadFromNib()->OpenFileWindowsController{
        let vc = NSStoryboard(name: "OpenFiles", bundle: nil).instantiateController(withIdentifier: "OpenFileWindowsController")as! OpenFileWindowsController
        return vc
    }
}
