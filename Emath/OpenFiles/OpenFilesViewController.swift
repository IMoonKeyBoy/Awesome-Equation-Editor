//
//  OpenFilesViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/3/2.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class OpenFilesViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear() {
        super.viewDidAppear()
        view.window?.level = .floating
    }
    
    
    @IBAction func OpenFiles(_ sender: Any) {
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = true
        openPanel.canChooseFiles = false
        openPanel.begin(completionHandler: {[weak self] result in

            if(result == NSApplication.ModalResponse.OK ){
                let fileName:NSURL = openPanel.urls[0] as NSURL
                
                let FilePath = fileName.absoluteString as? String
                print(FilePath)
            }
        })
    }
}
