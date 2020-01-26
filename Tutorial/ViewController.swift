//
//  ViewController.swift
//  Tutorial
//
//  Created by Robin Lin on 1/25/20.
//  Copyright © 2020 Robin Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayText:Double = 0;
    var prevNumber:Double = 0;
    var performingMath = false;
    var operation:Int = 0;
    
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            display.text = String(sender.tag-1);
            displayText = Double(display.text!)!;
            performingMath = false;
        }
            
        else {
            
            if display.text == "0" {
                display.font = display.font.withSize(80)
                display.text = String(sender.tag-1)
            }
            else {
                if (display.text!).count < 9 {
                    display.text = display.text! + String(sender.tag-1)
                    displayText = Double(display.text!)!
                    if ((display.text!).count > 5) {
                        display.font = display.font.withSize(40)
                    }
                }
            }
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        //        if (sender.tag == 11) {
        //            display.font = display.font.withSize(80)
        //            display.text = "0"
        //        }
        if display.text != "" && sender.tag != 11 && sender.tag != 16 {
            prevNumber = Double(display.text!)!;
            operation = sender.tag;
            performingMath = true;
        }
        else if sender.tag == 16 {
            if (operation == 12) {
                display.text = String(prevNumber / displayText);
                if ((display.text!).count > 5) {
                    display.font = display.font.withSize(40);
                }
            }
            
            if (operation == 13) {
                display.text = String(prevNumber*displayText);
                if ((display.text!).count > 5) {
                    display.font = display.font.withSize(40);
                }
                
            }
            if (operation == 14) {
                display.text = String(prevNumber-displayText);
                if ((display.text!).count > 5) {
                    display.font = display.font.withSize(40);
                }
                
            }
            if (operation == 15) {
                display.text = String(prevNumber+displayText);
                if ((display.text!).count > 5) {
                    display.font = display.font.withSize(40);
                }
            }
        }
        else if sender.tag == 11 {
            display.text = String(0);
            display.font = display.font.withSize(80);
            prevNumber = 0
            displayText = 0;
            operation = 0;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

