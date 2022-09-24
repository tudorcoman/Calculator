//
//  ViewController.swift
//  Calculator
//
//  Created by Muharrem Köroğlu on 12.09.2022.
//

import UIKit

class ViewController: UIViewController, ControllerCalculator {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var throwError: UILabel!
    
    var userResult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func generalOperation(op: Operator) {
        if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = executeOperation(userFirstNumber, secondNumber: userSecondnumber, op: op)
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }
    }
    
    @IBAction func sum(_ sender: Any) {
        generalOperation(op: Operator.plus)
        /*if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber + userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }*/
        
    }
    
    @IBAction func minus(_ sender: Any) {
        generalOperation(op: Operator.minus)
        /*if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber - userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }*/
    }
    
    @IBAction func multiple(_ sender: Any) {
        generalOperation(op: Operator.multiply)
        /*if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber * userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }*/
    }
    
    @IBAction func divide(_ sender: Any) {
        generalOperation(op: Operator.divide)
        /*if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber / userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }*/
    }
    
}

