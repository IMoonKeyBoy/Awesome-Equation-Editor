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
    
    
    func saveBookmarks(_ filePath : String){
        
        let userDefault = UserDefaults.standard
        let folderPath = NSURL(fileURLWithPath: filePath)
        print(folderPath.absoluteString!)
        do {
            let bookmark = try folderPath.bookmarkData(options: .securityScopeAllowOnlyReadAccess, includingResourceValuesForKeys: nil, relativeTo: nil)
            userDefault.set(bookmark, forKey: folderPath.absoluteString!)
        } catch let error as NSError {
            print("Set Bookmark Fails: \(error.description)")
        }
    }
    
    func readBookmarks(_ filePath : String){
        
        let userDefault = UserDefaults.standard
        if let bookmarkData = userDefault.object(forKey: filePath) as? NSData {
            do {
                let url = try NSURL.init(resolvingBookmarkData: bookmarkData as Data, options: .withoutUI, relativeTo: nil, bookmarkDataIsStale: nil)
                url.startAccessingSecurityScopedResource()
            } catch let error as NSError {
                print("Bookmark Access Fails: \(error.description)")
            }
        }
    }
    
}
