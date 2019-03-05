//
//  ViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/8.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Determine whether there is a Texlive environment
        let FileUrl = "/Library/TeX/texbin/pdflatex"
        let filePath = URL(string: FileUrl)!
        let manager = FileManager.default
        let exist = manager.fileExists(atPath: filePath.path)
        if !exist{
            let alert =  NSAlert()
            alert.messageText = "No suitable TeX environment was detected in your system!"
            alert.informativeText = "Please configure the environment as necessary！"
            //alert.addButton(withTitle: "Default")
            alert.addButton(withTitle: "OK")
            //alert.addButton(withTitle: "other")
            
            alert.beginSheetModal(for: view.window!, completionHandler: {response -> Void in
                print(response)
            })
        }
        
    }
    
    override func viewDidAppear() {
        //Check the texlive Environmental
    }
    
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    //Get the Viewcontroller
    class func loadFromNib() -> ViewController {
        let  storyboard = NSStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateController(withIdentifier: "ViewController") as! ViewController
        
    }
}

