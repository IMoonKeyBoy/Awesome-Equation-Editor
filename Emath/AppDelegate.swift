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

    var myAboutNSWindowController:AboutNSWindowController?
    var myFeedbackwindowscontroller:Feedbackwindowscontroller?
    var mySupportwindowscontroller:SupportNSWindowController?
    
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.variableLength)
    var eventMonitor: GlobalEventMonitor?
    let popover = NSPopover()
    var isReadingColor: Bool = false

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        if  let  button = statusItem.button{
            button.image=NSImage(named: "icons8-insert-equation-40")
            button.sendAction(on: [.leftMouseDown, .rightMouseDown])
            button.action = #selector(statusBarButtonClicked(_:))
        }
        popover.contentViewController = ViewController.loadFromNib()
        popover.animates = false
        eventMonitor = GlobalEventMonitor(mask: [.leftMouseDown, .rightMouseDown]) { [weak self] event in
            guard let strongSelf = self else { return }
            if strongSelf.isReadingColor {
                strongSelf.isReadingColor = false
            } else if strongSelf.popover.isShown {
                strongSelf.closePopover(sender: event)
            }
        }
    }
    
    @objc func statusBarButtonClicked(_ sender: NSStatusBarButton) {
        let event = NSApp.currentEvent!
        
        switch event.type {
        case .rightMouseDown:
            closePopover(sender: nil)
            
            //Support
            let contextMenu = NSMenu()
            let SupportItem = NSMenuItem(title: "Support", action: #selector(self.Support(_:)), keyEquivalent: "")
            contextMenu.addItem(SupportItem)
            
            //separator
            contextMenu.addItem(NSMenuItem.separator())
            
            //About
            let AboutItem = NSMenuItem(title: "About Emath", action: #selector(self.About(_:)), keyEquivalent: "")
            contextMenu.addItem(AboutItem)
            
            //Feadback
            let FeadbackItem = NSMenuItem(title: "Contact & Feadback", action: #selector(self.FeedBack(_:)), keyEquivalent: "")
            contextMenu.addItem(FeadbackItem)
            
            //separator
            contextMenu.addItem(NSMenuItem.separator())
            
            //Exit
            let quitItem = NSMenuItem(title: "Quit Emath", action: #selector(self.Cancel(_:)), keyEquivalent: "")
            contextMenu.addItem(quitItem)
            
            statusItem.menu = contextMenu
            statusItem.popUpMenu(contextMenu)
            statusItem.menu = nil
        default:
            togglePopover(sender: nil)
        }
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    func togglePopover(sender: Any?) {
        if popover.isShown {
            closePopover(sender: sender)
        } else {
            showPopover(sender: sender)
        }
    }
    
    func showPopover(sender: Any?) {
        if let button = statusItem.button {
            popover.show(relativeTo: button.bounds, of: button, preferredEdge: NSRectEdge.minY)
        }
        if let window = NSApplication.shared.windows.first {
            window.makeKey()
        }
        eventMonitor?.start()
    }
    
    func closePopover(sender: Any?) {
        popover.performClose(sender)
        eventMonitor?.stop()
    }
    
    //Show other WindowsController
    //Support
    @IBAction func Support(_ sender: NSButton) {
        if(self.mySupportwindowscontroller == nil){
            self.mySupportwindowscontroller = SupportNSWindowController.loadFromNib()
        }
        self.mySupportwindowscontroller?.showWindow(self)
        self.mySupportwindowscontroller?.window?.makeKeyAndOrderFront(sender)
    }
    //About
    @IBAction func About(_ sender: NSButton) {
        if(self.myAboutNSWindowController == nil){
            self.myAboutNSWindowController = AboutNSWindowController.loadFromNib()
        }
        self.myAboutNSWindowController?.showWindow(self)
        self.myAboutNSWindowController?.window?.makeKeyAndOrderFront(sender)
    }
    //FeadBack
    @IBAction func FeedBack(_ sender: NSButton) {
        if(self.myFeedbackwindowscontroller == nil){
            self.myFeedbackwindowscontroller = Feedbackwindowscontroller.loadFromNib()
        }
        self.myFeedbackwindowscontroller?.showWindow(self)
        self.myFeedbackwindowscontroller?.window?.makeKeyAndOrderFront(sender)
    }
    //Cancel
    @IBAction func Cancel(_ sender: NSButton) {
        exit(0)
    }
}

