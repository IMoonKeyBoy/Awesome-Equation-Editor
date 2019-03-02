//
//  MyTextView.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/17.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class MyTextView: NSTextView {

    //rebuild the textview font
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        let myrange =  NSMakeRange(0,self.string.count)
        self.setFont(NSFont(name: "Times New Roman", size: 17)!, range:myrange)
       
        if isDark(){
            let myrange =  NSMakeRange(0,self.string.count)
            self.setTextColor(NSColor.white, range: myrange)
        }else{
            let myrange =  NSMakeRange(0,self.string.count)
            self.setTextColor(NSColor.black, range: myrange)
        }
        // Drawing code here.
    }
    
     func isDark() -> Bool {
        let dict = UserDefaults.standard.persistentDomain(forName: UserDefaults.globalDomain)
        let appearance = dict?["AppleInterfaceStyle"] as? String
        if #available(OSX 10.10, *) {
            return appearance == "Dark"
        } else {
            // Fallback on earlier versions
        }
        return false
    }
}
