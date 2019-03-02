//
//  SupportViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/19.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class SupportViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        view.window?.level = .floating
    }
    @IBAction func SupportFangbian(_ sender: Any) {
        NSWorkspace.shared.open(URL(string: "https://paypal.me/EmathEditor?locale.x=zh_XC")!)
    }
}
