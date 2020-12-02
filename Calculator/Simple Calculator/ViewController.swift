//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Ngô Minh Tông on 12/1/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultLabel: UILabel!
    
    var currentNumber: Double = 0
    var previousNumber: Double = 0
    var performMath = false
    var operation = 0
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        if performMath == true {
            
            ResultLabel.text = String(sender.tag)
            currentNumber = Double(ResultLabel.text!)!
            performMath = false
            
        } else {
            
            ResultLabel.text! += String(sender.tag)
            currentNumber = Double(ResultLabel.text!)!
            
        }
    }
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        if ResultLabel.text != "" &&  sender.tag != 14 {
            
            previousNumber = Double(ResultLabel.text!)!
            operation = sender.tag
            performMath = true
            
        } else if sender.tag == 14 {
            
            performMath = true
            
            switch operation {
            case 10:
            //Divided
                ResultLabel.text = String(previousNumber / currentNumber)
            case 11:
            //Multiple
                ResultLabel.text = String(previousNumber * currentNumber)
            case 12:
            //Minus
                ResultLabel.text = String(previousNumber - currentNumber)
            case 13:
            //Plus
                ResultLabel.text = String(previousNumber + currentNumber)
                print(previousNumber)
            default:
                print("Nothing")
            }
        }
    }
    
    
    @IBAction func decimalButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        
        ResultLabel.text = ""
        previousNumber = 0
        currentNumber = 0
        operation = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

