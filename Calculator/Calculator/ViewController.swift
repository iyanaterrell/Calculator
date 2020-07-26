//
//  ViewController.swift
//  Calculator
//
//  Created by Iyana Terrell-Coleman on 7/26/20.
//  Copyright © 2020 Jude Terrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber:Double = 0
    var calculating: Bool = false
    var operation = 0;
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        
        if calculating == true {
            resultLabel.text = String(sender.tag-1)
            numberOnScreen = Double (resultLabel.text!)!
            calculating = false
            
        }
        else
        {
            resultLabel.text = resultLabel.text! + String(sender.tag-1)
            numberOnScreen = Double(resultLabel.text!)!
        }
        
        
        
      
        
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if resultLabel.text != "" && sender.tag != 11 && sender.tag != 12 && sender.tag != 18
        {
            
            previousNumber = Double(resultLabel.text!)!
            if sender.tag == 14 // divide
            {
                resultLabel.text = "/"
            }
            else if sender.tag == 15 // multiply
            {
                resultLabel.text = "x"
            }
            else if sender.tag == 16 // subtract
            {
                resultLabel.text = "-"
            }
            else if sender.tag == 17 // add
            {
                resultLabel.text = "+"
            }
            
            operation = sender.tag
            calculating = true
        }
        else if sender.tag == 18
        {
            if operation == 14
            {
                resultLabel.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 15
            {
                resultLabel.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 16
            {
                resultLabel.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 17
            {
                resultLabel.text = String(previousNumber + numberOnScreen)
            }
            
            
            
        }
        else if sender.tag == 11
        {
            resultLabel.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

