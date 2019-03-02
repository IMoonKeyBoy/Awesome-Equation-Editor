//
//  LatexViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/16.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa

class LatexViewController: NSViewController {
    
   
    @IBOutlet weak var mysrcollerview: NSScrollView!
    
    @IBOutlet var myTextView: NSTextView!

    
    var StartTexString = "\\documentclass{article}\n\\usepackage{aligned-overset}"+"\\usepackage[paperheight=2in]{geometry}\n\\newcommand{\\chuhao}{\\fontsize{42pt}{\\baselineskip}\\selectfont}\n\\begin{document}\n\\setlength{\\lineskip}{2em}\n \\begin{center} \\chuhao $"
    var endTexString = "$\n\\end{center} \n \\end{document}"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mysrcollerview.backgroundColor = NSColor.clear
        myTextView.backgroundColor = NSColor.clear
        //init the pdf
        ClearEmpty()

        //Divide_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Divide_0(_:)), name: NSNotification.Name(rawValue: "Divide_0"), object: nil)
        //Root_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Root_0(_:)), name: NSNotification.Name(rawValue: "Root_0"), object: nil)
        //Root_x_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Root_x_y(_:)), name: NSNotification.Name(rawValue: "Root_x_y"), object: nil)
        //e_x
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.e_x(_:)), name: NSNotification.Name(rawValue: "e_x"), object: nil)
        //e_x_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.e_x_y(_:)), name: NSNotification.Name(rawValue: "e_x_y"), object: nil)
        //e__y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.e__y(_:)), name: NSNotification.Name(rawValue: "e__y"), object: nil)
        //integral_x_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.integral_x_y(_:)), name: NSNotification.Name(rawValue: "integral_x_y"), object: nil)
        //Sum_x
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Sum_x(_:)), name: NSNotification.Name(rawValue: "Sum_x"), object: nil)
        //prod_x
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.prod_x(_:)), name: NSNotification.Name(rawValue: "prod_x"), object: nil)
        //Vector_x
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Vector_x(_:)), name: NSNotification.Name(rawValue: "Vector_x"), object: nil)
        //dot_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.dot_y(_:)), name: NSNotification.Name(rawValue: "dot_y"), object: nil)
        //log_x_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.log_x_y(_:)), name: NSNotification.Name(rawValue: "log_x_y"), object: nil)
        //ln_x
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.ln_x(_:)), name: NSNotification.Name(rawValue: "ln_x"), object: nil)
        //min_x
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.min_x(_:)), name: NSNotification.Name(rawValue: "min_x"), object: nil)
        //max_y
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.max_y(_:)), name: NSNotification.Name(rawValue: "max_y"), object: nil)
        //add_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.add_0(_:)), name: NSNotification.Name(rawValue: "add_0"), object: nil)
        //Subtaction_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Subtaction_0(_:)), name: NSNotification.Name(rawValue: "Subtaction_0"), object: nil)
        //Summation_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.Summation_0(_:)), name: NSNotification.Name(rawValue: "Summation_0"), object: nil)
        //unequeal_0
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.unequeal_0(_:)), name: NSNotification.Name(rawValue: "unequeal_0"), object: nil)
        //wedge
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.wedge(_:)), name: NSNotification.Name(rawValue: "wedge"), object: nil)
        //vee
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.vee(_:)), name: NSNotification.Name(rawValue: "vee"), object: nil)
        //infy
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.infy(_:)), name: NSNotification.Name(rawValue: "infy"), object: nil)
        //varphi
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.varphi(_:)), name: NSNotification.Name(rawValue: "varphi"), object: nil)
        //sigma
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.sigma(_:)), name: NSNotification.Name(rawValue: "sigma"), object: nil)
        //pi
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.pi(_:)), name: NSNotification.Name(rawValue: "pi"), object: nil)
        //lambda
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.lambda(_:)), name: NSNotification.Name(rawValue: "lambda"), object: nil)
        //theta
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.theta(_:)), name: NSNotification.Name(rawValue: "theta"), object: nil)
        //eta
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.eta(_:)), name: NSNotification.Name(rawValue: "eta"), object: nil)
        //varepsilon
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.varepsilon(_:)), name: NSNotification.Name(rawValue: "varepsilon"), object: nil)
        //delta
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.delta(_:)), name: NSNotification.Name(rawValue: "delta"), object: nil)
        //beta
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.beta(_:)), name: NSNotification.Name(rawValue: "beta"), object: nil)
        //alpha
         NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.alpha(_:)), name: NSNotification.Name(rawValue: "alpha"), object: nil)
    
        //ClickView
        NotificationCenter.default.addObserver(self, selector: #selector(LatexViewController.ClickView(_:)), name: NSNotification.Name(rawValue: "ClickView"), object: nil)
        
        // Do view setup here.
    
    }
    //Add function lacation
    @IBAction func Divide_0(_ notification:NSNotification){
        //update the textview content
        myTextView.insertText("\\frac {x}{y} ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Root_0(_ notification:NSNotification){
        myTextView.insertText("\\sqrt {x} ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Root_x_y(_ notification:NSNotification){
        myTextView.insertText("\\sqrt [x]{y}", replacementRange: myTextView.selectedRange())
    }
    @IBAction func e_x(_ notification:NSNotification){
        myTextView.insertText("{e}^{x}", replacementRange: myTextView.selectedRange())
    }
    @IBAction func e_x_y(_ notification:NSNotification){
        myTextView.insertText("{e}_{y}^{x}", replacementRange: myTextView.selectedRange())
    }
    
    @IBAction func e__y(_ notification:NSNotification){
        myTextView.insertText("\\overset {x}{e} ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func integral_x_y(_ notification:NSNotification){
        myTextView.insertText("\\int_{a}^{b}{y} ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Sum_x(_ notification:NSNotification){
        myTextView.insertText("\\sum _{ i=0 }^{ n }{ { x }_{ i } } ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func prod_x(_ notification:NSNotification){
        myTextView.insertText("\\prod _{ i=0 }^{ n }{ { x }_{ i } } ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Vector_x(_ notification:NSNotification){
        myTextView.insertText("\\vec { x } ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func dot_y(_ notification:NSNotification){
        myTextView.insertText("\\dot { y } ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func log_x_y(_ notification:NSNotification){
        myTextView.insertText("\\log _{ x }{ y } ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func ln_x(_ notification:NSNotification){
        myTextView.insertText("\\ln { x }  ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func min_x(_ notification:NSNotification){
        myTextView.insertText("\\min { x} ", replacementRange: myTextView.selectedRange())
    }
    @IBAction func max_y(_ notification:NSNotification){
        myTextView.insertText("\\max { y } ", replacementRange: myTextView.selectedRange())
    }
    //
    @IBAction func add_0(_ notification:NSNotification){
        myTextView.insertText("+", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Subtaction_0(_ notification:NSNotification){
        myTextView.insertText("-", replacementRange: myTextView.selectedRange())
    }
    @IBAction func Summation_0(_ notification:NSNotification){
        myTextView.insertText("=", replacementRange: myTextView.selectedRange())
    }
    @IBAction func unequeal_0(_ notification:NSNotification){
        myTextView.insertText("\\neq", replacementRange: myTextView.selectedRange())
    }
    @IBAction func wedge(_ notification:NSNotification){
        myTextView.insertText("\\wedge", replacementRange: myTextView.selectedRange())
    }
    @IBAction func vee(_ notification:NSNotification){
        myTextView.insertText("\\vee", replacementRange: myTextView.selectedRange())
    }
    @IBAction func infy(_ notification:NSNotification){
        myTextView.insertText("\\infty ", replacementRange: myTextView.selectedRange())
    }
    //varphi
    @IBAction func varphi(_ notification:NSNotification){
        myTextView.insertText("\\varphi ", replacementRange: myTextView.selectedRange())
    }
    //sigma
    @IBAction func sigma(_ notification:NSNotification){
        myTextView.insertText("\\sigma ", replacementRange: myTextView.selectedRange())
    }
    //pi
    @IBAction func pi(_ notification:NSNotification){
        myTextView.insertText("\\pi ", replacementRange: myTextView.selectedRange())
    }
    //lambda
    @IBAction func lambda(_ notification:NSNotification){
        myTextView.insertText("\\lambda ", replacementRange: myTextView.selectedRange())
    }
    //theta
    @IBAction func theta(_ notification:NSNotification){
        myTextView.insertText("\\theta ", replacementRange: myTextView.selectedRange())
    }
    //eta
    @IBAction func eta(_ notification:NSNotification){
        myTextView.insertText("\\eta ", replacementRange: myTextView.selectedRange())
    }
    //varepsilon
    @IBAction func varepsilon(_ notification:NSNotification){
        myTextView.insertText("\\varepsilon ", replacementRange: myTextView.selectedRange())
    }
    //delta
    @IBAction func delta(_ notification:NSNotification){
        myTextView.insertText("\\delta ", replacementRange: myTextView.selectedRange())
    }
    //beta
    @IBAction func beta(_ notification:NSNotification){
        myTextView.insertText("\\beta ", replacementRange: myTextView.selectedRange())
    }
    //alpha
    @IBAction func alpha(_ notification:NSNotification){
        myTextView.insertText("\\alpha ", replacementRange: myTextView.selectedRange())
    }

    
    //ClickView
    @IBAction func ClickView(_ notification:NSNotification){
        CreateFile()
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "BuiltTexFile"), object: self)
    }
    
    //
    func CreateFile(){
        //create new tex file and write some thing
        let FinishLatex = StartTexString + myTextView.string+endTexString
        
        let myDirectory:String = NSHomeDirectory() + "/Downloads" + "/.EmathFiles/Latexmath.tex"
        let FileUrl = "file://\(myDirectory.replacingOccurrences(of: " ", with: "%20"))"
        let filePath = URL(string: FileUrl)!
        writeFile(TexString:FinishLatex, fileBaseUrl: filePath)
    }
    func writeFile(TexString:String, fileBaseUrl:URL){
        
        print("Wir")
        let fileManager = FileManager.default
        let path = fileBaseUrl.path
        fileManager.createFile(atPath: path, contents:nil, attributes:nil)
        let handle = FileHandle(forWritingAtPath:path)
        handle?.write(TexString.data(using: String.Encoding.utf8)!)
    }
  
    @IBAction func CopyTex(_ sender: NSButton) {
        if (myTextView.string != nil) {
            let content = myTextView.string
            let pb = NSPasteboard.general
            pb.clearContents()
            pb.writeObjects([content as NSString])
            alert()
        }
        //Copybutton()
    }
    @IBAction func ViewPDF(_ sender: NSButton) {
        CreateFile()
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "BuiltTexFile"), object: self)
    }
    
    func ClearEmpty(){
        myTextView.insertText(" ", replacementRange: NSMakeRange(0,myTextView.string.count))
        CreateFile()
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "BuiltTexFile"), object: self)
    }
    
    @IBAction func ClearTextView(_ sender: Any) {
        myTextView.insertText(" ", replacementRange: NSMakeRange(0,myTextView.string.count))
        CreateFile()
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "BuiltTexFile"), object: self)
    }
    func alert(){
        let alert =  NSAlert()
        alert.messageText = "The formula content has been copied to the clipboard!"
        alert.informativeText = "please press the command + c button  to use it!"
        //alert.addButton(withTitle: "Default")
        alert.addButton(withTitle: "OK")
        //alert.addButton(withTitle: "other")
        
        alert.beginSheetModal(for: view.window!, completionHandler: {response -> Void in
            print(response)
        })
        //let result = alert.runModal()
    }
}
