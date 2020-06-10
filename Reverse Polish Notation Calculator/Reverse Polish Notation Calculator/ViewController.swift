//
//  ViewController.swift
//  Reverse Polish Notation Calculator
//
//  Created by Hassall, Oscar (HWTA) on 09/06/2020.
//  Copyright © 2020 Hassall, Oscar (HWTA). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayText = ""
    var operandOneComplete = false
    var operand = ""
    let stack = Stack()
    let inputChecker = InputChecker()
    let operations = Operation()

    override func viewDidLoad() {
        super.viewDidLoad()
        display.text = ""
        
        
    }
    
    @IBOutlet var display: UILabel!
    
    @IBAction func zeroButton(_ sender: Any) {
        displayText.append("0")
        display.text = displayText
        operand.append("0")
    }
    
    @IBAction func oneButton(_ sender: Any) {
        displayText.append("1")
        display.text = displayText
        operand.append("1")
    }
    
    @IBAction func twoButton(_ sender: Any) {
        displayText.append("2")
        display.text = displayText
        operand.append("2")
    }
    
    @IBAction func threeButton(_ sender: Any) {
        displayText.append("3")
        display.text = displayText
        operand.append("3")
    }
    
    @IBAction func fourButton(_ sender: Any) {
        displayText.append("4")
        display.text = displayText
        operand.append("4")
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        displayText.append("5")
        display.text = displayText
        operand.append("5")
    }
    
    @IBAction func sixButton(_ sender: Any) {
        displayText.append("6")
        display.text = displayText
        operand.append("6")
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        displayText.append("7")
        display.text = displayText
        operand.append("7")
    }
    
    @IBAction func eightButton(_ sender: Any) {
        displayText.append("8")
        display.text = displayText
        operand.append("8")
    }
    
    @IBAction func nineButton(_ sender: Any) {
        displayText.append("9")
        display.text = displayText
        operand.append("9")
        
    }
    
    @IBAction func evaluationButton(_ sender: Any) {
        var evaluation = stack.pop()
        print(evaluation)
        if evaluation == nil{
            displayText = "STACK IS EMPTY"
        }
        else{
            displayText = String(evaluation!)
        }
        
        display.text = displayText
    }
    
    @IBAction func clearButton(_ sender: Any) {
        displayText = ""
        operand = ""
        display.text = displayText
        while stack.pop() != nil{
            stack.pop()
        }
    }
    
    @IBAction func enterButton(_ sender: Any) {
        var validInput = inputChecker.check(input: operand)
        if validInput == false {
            displayText = "ERROR"
        }
        else{
        stack.push(input: Int(operand)!)
        }
        operand = ""
        display.text = displayText
    }
    
    @IBAction func signFlipButton(_ sender: Any) {
        displayText.append("-")
        display.text = displayText
        operand.append("-")
        
    }
    
    @IBAction func additionOperatorButton(_ sender: Any) {
        var validInput = inputChecker.check(input: operand)
        if validInput == false {
            displayText = "ERROR"
        } else {
            if operand != ""{
                stack.push(input: Int(operand)!)
                operand = ""
            }
            
            displayText.append("+")
            let operandOne = stack.pop()
            let operandTwo = stack.pop()
            let totalOperand = operandOne! + operandTwo!
            stack.push(input: totalOperand)
        }
        display.text = displayText
    }
    
    @IBAction func subtractionOperatorButton(_ sender: Any) {
        var validInput = inputChecker.check(input: operand)
        if validInput == false {
            displayText = "ERROR"
        } else {
            if operand != ""{
                stack.push(input: Int(operand)!)
                operand = ""
            }
            displayText.append("-")
            let operandOne = stack.pop()
            let operandTwo = stack.pop()
            let totalOperand = operandTwo! - operandOne!
            stack.push(input: totalOperand)
        }
        display.text = displayText
        
    
    }
    
    @IBAction func multiplicationOperatorButton(_ sender: Any) {
        var validInput = inputChecker.check(input: operand)
        if validInput == false {
            displayText = "ERROR"
        } else {
            if operand != ""{
                stack.push(input: Int(operand)!)
                operand = ""
            }
            displayText.append("*")
            display.text = displayText
            let operandOne = stack.pop()
            let operandTwo = stack.pop()
            let totalOperand = operandOne! * operandTwo!
            stack.push(input: totalOperand)
        }
        display.text = displayText
    }
    
    @IBAction func divisionOperatorButton(_ sender: Any) {
        var validInput = inputChecker.check(input: operand)
        if validInput == false {
            displayText = "ERROR"
        } else {
            if operand != ""{
                stack.push(input: Int(operand)!)
                operand = ""
            }
            displayText.append("/")
            display.text = displayText
            let operandOne = stack.pop()
            let operandTwo = stack.pop()
            if operandOne == 0 {
               displayText = "ERROR"
            } else {
                let totalOperand = operandTwo! / operandOne!
                stack.push(input: totalOperand)
            }
        }
        display.text = displayText
    }
    
}

