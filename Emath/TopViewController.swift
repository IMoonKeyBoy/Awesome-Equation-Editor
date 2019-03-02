//
//  TopViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/27.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class TopViewController: NSViewController {

    
    @IBOutlet weak var Exitbutton: NSButton!
    @IBOutlet weak var FeedbackButton: NSButton!
    @IBOutlet weak var SupportButton: NSButton!
    @IBOutlet weak var AboutButton: NSButton!
    
    //Other windows Controller
    var myOpenFilewindowscontroller:OpenFileWindowsController?
    
    var myAboutNSWindowController:AboutNSWindowController?
    var myFeedbackwindowscontroller:Feedbackwindowscontroller?
    var mySupportwindowscontroller:SupportNSWindowController?

    
    @IBAction func OpenFiles(_ sender: Any) {
        if(self.myOpenFilewindowscontroller == nil){
            self.myOpenFilewindowscontroller = OpenFileWindowsController.loadFromNib()
        }
        self.myOpenFilewindowscontroller?.showWindow(self)
        self.myOpenFilewindowscontroller?.window?.makeKeyAndOrderFront(sender)
    }
    
    @IBAction func Support(_ sender: NSButton) {
        if(self.mySupportwindowscontroller == nil){
            self.mySupportwindowscontroller = SupportNSWindowController.loadFromNib()
        }
        self.mySupportwindowscontroller?.showWindow(self)
        self.mySupportwindowscontroller?.window?.makeKeyAndOrderFront(sender)
    }
    @IBAction func About(_ sender: NSButton) {
        if(self.myAboutNSWindowController == nil){
            self.myAboutNSWindowController = AboutNSWindowController.loadFromNib()
        }
        self.myAboutNSWindowController?.showWindow(self)
        self.myAboutNSWindowController?.window?.makeKeyAndOrderFront(sender)
    }
    @IBAction func FeedBack(_ sender: NSButton) {
        if(self.myFeedbackwindowscontroller == nil){
           self.myFeedbackwindowscontroller = Feedbackwindowscontroller.loadFromNib()
        }
        self.myFeedbackwindowscontroller?.showWindow(self)
        self.myFeedbackwindowscontroller?.window?.makeKeyAndOrderFront(sender)
    }
    @IBAction func Cancel(_ sender: NSButton) {
        exit(0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
