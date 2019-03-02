//
//  AboutViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/21.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class AboutViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.wantsLayer = true
        //let color : CGColor = CGColor.init(red: 1, green: 1, blue: 1, alpha: 1)
        //self.view.layer?.backgroundColor = color
        
        // Do view setup here.
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        view.window?.level = .floating
        
    }
}
