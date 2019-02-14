//
//  calculatorController.swift
//  calculatorApplication
//
//  Created by Admin on 21/12/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class calculatorController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         resultLabel.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        var number1 = ""
        var number2 = ""
        var operand = ""
        var isFirst = true
        var hasOp = false
        let textEntered = sender.titleLabel?.text
        print("textEntered:" , textEntered!)
        switch textEntered {
        case "+","-","*","/":
            if isFirst || hasOp {
                return
            }
            else {
                hasOp = true
                isFirst = false
                operand = textEntered!
                print("operand:" , operand)
            }
       
            
            default:
            if isFirst {
                number1 = ("\(number1)\(textEntered)")
                
            }
            else {
                
                number2 = ("\(number1)\(textEntered)")
            }
        }
        if textEntered == "=" {
            print("call calculator function")
            print("first Number:", number1 )
            print("second Number:", number2)
            let firstN = Double(number1)!
            let secondN = Double(number2)!
            number1 = ""
            number2 = ""
            var result : Double = 0
            switch operand {
            case "+":
                result =  firstN + secondN
            case "-":
                result =  firstN - secondN
            case "*":
                result =  firstN * secondN
            case "/":
                result =  firstN / secondN
            default:
                result = 0
            }
              print("result:", result)
            
        }
      
    }
    
    
}
