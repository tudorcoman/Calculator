//
//  ViewController.swift
//  Calculator
//
//  Created by Muharrem Köroğlu on 12.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var throwError: UILabel!
    
    var userResult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sum(_ sender: Any) {
        
        if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber + userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber - userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }
    }
    
    @IBAction func multiple(_ sender: Any) {
        
        if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber * userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        
        if let userFirstNumber = Int(firstNumber.text!) {
            throwError.text = " "
            if let userSecondnumber = Int(secondNumber.text!){
                userResult = userFirstNumber / userSecondnumber
                result.text = String(userResult)
            }else{
                throwError.text = "Please! Just enter number"
            }
        }else{
            throwError.text = "Please! Just enter number"
        }
    }
    
}

