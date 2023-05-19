//
//  ViewController.swift
//  simpleCalculator
//
//  Created by omer on 19.05.2023.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                //resultLabel.text = String(firstNumber + secondNumber)
                resultLabel.text = "\(firstNumber + secondNumber)"
                
                
            }
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                resultLabel.text = "\(firstNumber - secondNumber)"
                
            }
        }
    }
    
    
    @IBAction func multiClicked(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                resultLabel.text = "\(firstNumber * secondNumber)"
                
            }
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                if secondNumber == 0.0{
                    let alert = UIAlertController(title: "Error!", message: "Zero division error!", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default))
                    self.present(alert, animated: true, completion: nil)
                }else{
                    resultLabel.text = "\(firstNumber / secondNumber)"
                }
            }
        }
    }
    
    
    @IBAction func percentClicked(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                
                resultLabel.text = "\((firstNumber * secondNumber) / 100)"
                
            }
        }
    }
    
    
    
    @IBAction func resetClicked(_ sender: Any) {
        firstText.text = ""
        secondText.text = ""
        resultLabel.text = "Result:"
    }
    
    
    
    
}



