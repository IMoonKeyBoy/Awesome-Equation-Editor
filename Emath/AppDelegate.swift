//
//  AppDelegate.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/8.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.variableLength)
    // popover
    let popover = NSPopover()
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if  let  button = statusItem.button{
            button.image=NSImage(named: "icons8-insert-equation-40")
           button.action = Selector("togglePopover:")
        }
        popover.contentViewController = ViewController.loadFromNib()

        //readBookmarks("/usr/")
    }
    
   
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    func closePopover(sender: AnyObject?){
        popover.performClose(sender)
        
    }
    func showPopover(sender: AnyObject?){
        if let button = statusItem.button{
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
    }
    @IBAction func togglePopover(_ sender: NSStatusBarButton){
        if popover.isShown{
            closePopover(sender: sender)
        }else{
            showPopover(sender: sender)
        }
    }
    
}

