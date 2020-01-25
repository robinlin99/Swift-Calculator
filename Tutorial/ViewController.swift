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
    var tracker:Double = 0;
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if display.text == "0" {
            display.font = display.font.withSize(80)
            display.text = String(sender.tag-1)
        }
        else {
            display.text = display.text! + String(sender.tag-1)
            displayText = Double(display.text!)!
            if (display.text!).count > 5 {
                display.font = display.font.withSize(50)
            }
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        if (sender.tag == 11) {
            display.text = "0"
            tracker = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

