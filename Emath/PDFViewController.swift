//
//  PDFViewController.swift
//  Emath
//
//  Created by MonkeyBoy on 2019/2/16.
//  Copyright © 2019 MonkeyBoy. All rights reserved.
//

import Cocoa
import Quartz.PDFKit
class PDFViewController: NSViewController {

    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myDirectory:String = NSHomeDirectory() + "/Downloads"+"/.EmathFiles"
        
        let fileManager = FileManager.default
        do{
            try fileManager.createDirectory(atPath: myDirectory,withIntermediateDirectories: true, attributes: nil)
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    
        //Create file
        let FileUrl = "file://\(myDirectory.replacingOccurrences(of: " ", with: "%20"))"
        let filePath = URL(string: FileUrl)!
        createFile(name:"LatexMath.tex", fileBaseUrl: filePath)
        
    
        //Read the pdf file in "url" path
        //if the pdf file is empty, not view!
        if let document = PDFDocument(url:filePath.appendingPathComponent("Latexmath.pdf")){
            pdfView.document=document
           
        }
        // Do view setup here.
        
        //Get the texFile signfication
        
        NotificationCenter.default.addObserver(self, selector: #selector(PDFViewController.BuildTexFile(_:)), name: NSNotification.Name(rawValue: "BuiltTexFile"), object: nil)
        
    }
    
    //Create file base the name and absolutely path
    func createFile(name:String, fileBaseUrl:URL){
        let manager = FileManager.default
        let file = fileBaseUrl.appendingPathComponent(name)
        //print("File: \(file)")
        let exist = manager.fileExists(atPath: file.path)
        print(exist)
        if !exist {
            let data = Data(base64Encoded:"aGVsbG8gd29ybGQ=" ,options:.ignoreUnknownCharacters)
            let createSuccess = manager.createFile(atPath: file.path,contents:data,attributes:nil)
            print("The Result: \(createSuccess)")
        }
    }
    

    @IBAction func BuildTexFile(_ notification:NotificationCenter){
        
        let thread = Thread.init(target: self, selector:#selector(PDFViewController.showPdf(_:)), object: nil)
        thread.start()
    }
    
    @IBAction func showPdf(_ notification:NotificationCenter){
        let pipe1 = Pipe()
        let task1 = Process()
        let executePath = NSHomeDirectory() + "/Downloads" + "/.EmathFiles"
        let Filename = NSHomeDirectory() + "/Downloads" + "/.EmathFiles/Latexmath.tex"
        task1.launchPath = "/bin/bash"
        //task1.arguments = ["-c","cd \(executePath); pdflatex \(Filename)"]

        task1.arguments = ["-c","cd \(executePath);  /Library/TeX/texbin/pdflatex -synctex=1 -interaction=nonstopmode  \(Filename)"]
        task1.standardOutput = pipe1
        task1.launch()
        
        let data = pipe1.fileHandleForReading.readDataToEndOfFile()
        //print(data)
        if let output = String(data: data, encoding: String.Encoding.utf8) {
           // print(output)
        }
        
        let myDirectory:String = NSHomeDirectory() + "/Downloads" + "/.EmathFiles"
        let FileUrl = "file://\(myDirectory.replacingOccurrences(of: " ", with: "%20"))"
        let filePath = URL(string: FileUrl)!
        
        
        DispatchQueue.global(qos: .userInitiated).async {
            DispatchQueue.main.async {
                if let document = PDFDocument(url:filePath.appendingPathComponent("Latexmath.pdf")){
                    self.pdfView.document=document
                    let pdfCount = self.pdfView.document?.pageCount
                    if pdfCount! > 1 {
                        
                    }
                }
            }
        }
    }
    
}
