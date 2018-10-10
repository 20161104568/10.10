//
//  ViewController.swift
//  10.10
//
//  Created by 20161104568 on 2018/10/10.
//  Copyright © 2018年 20161104568. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var zyj: UITextField!
    var firstOperand: Double = 0.0
    
    var secondOperand: Double = 0.0
    
    var decimalPointFlag: Bool = false
   
    var isSecond: Bool = false
  
    var operatorFlag: String = ""
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func zyj1(_ sender: Any) {
        zyj.text = zyj.text! + "1"
    }
    
    @IBAction func zyj2(_ sender: Any) {
        zyj.text = zyj.text! + "2"
    }
    
    @IBAction func zyj3(_ sender: Any) {
        zyj.text = zyj.text! + "3"
    }
    
    @IBAction func zyj4(_ sender: Any) {
        zyj.text = zyj.text! + "4"
    }
    
    @IBAction func zyj5(_ sender: Any) {
        zyj.text = zyj.text! + "5"
    }
    
    @IBAction func zyj6(_ sender: Any) {
        zyj.text = zyj.text! + "6"
    }
    
    @IBAction func zyj7(_ sender: Any) {
        zyj.text = zyj.text! + "7"
    }
    
    @IBAction func zyj8(_ sender: Any) {
        zyj.text = zyj.text! + "8"
    }
    
    @IBAction func zyj9(_ sender: Any) {
        zyj.text = zyj.text! + "9"
    }
    
    @IBAction func zyjdelete(_ sender: Any) {
        zyj.text = ""
        
       
        firstOperand = 0
        
        
        secondOperand = 0
        
        
        decimalPointFlag = false
        
        
        isSecond = false
        
       
        operatorFlag = ""
            
        
        
    }
    
    @IBAction func zyj0(_ sender: Any) {
        zyj.text = zyj.text! + "0"
    }
    
    @IBAction func zyjadd(_ sender: Any) {
        
    }
    
    @IBAction func zyjreduce(_ sender: Any) {
    }
    
    @IBAction func zyjcheng(_ sender: Any) {
    }
    
    @IBAction func zyjchu(_ sender: Any) {
    }
    
    @IBAction func zyjequal(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

