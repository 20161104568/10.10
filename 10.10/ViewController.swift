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
    var firstNumber = 0
    
    var secondNumber = 0
    
    var result = 0
    
    var pd = 0       //判断加减乘除
    //var decimalPointFlag: Bool = false
    
    //var isSecond: Bool = false
    
    //var operatorFlag: String = ""
    
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
    
    
    @IBAction func zyj0(_ sender: Any) {
        zyj.text = zyj.text! + "0"
    }
    
    
    @IBAction func zyjdelete(_ sender: Any) {
        zyj.text = ""
        
        
        firstNumber = 0
        
        
        secondNumber = 0
        
        
        //decimalPointFlag = false
        
        
        //isSecond = false
        
        
        //operatorFlag = ""
        
        
    }
    
    @IBAction func zyjadd(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 1
        }else{
            firstNumber = Int(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 1
        }
    }
    
    @IBAction func zyjreduce(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 2
        }else{
            firstNumber = Int(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 2
        }
    }
    
    @IBAction func zyjcheng(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 3
        }else{
            firstNumber = Int(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 3
        }
    }
    
    @IBAction func zyjchu(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 4
        }else{
            firstNumber = Int(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 4
        }
    }
    
    @IBAction func zyjequal(_ sender: Any) {
        secondNumber = Int(zyj.text!)!
        zyj.text = String(secondNumber)
        zyj.text = "0"
        if pd == 1{
            result = firstNumber + secondNumber
        }else if pd == 2{
            result = firstNumber - secondNumber
        }else if pd == 3{
            result = firstNumber * secondNumber
        }else if pd == 4{
            result = firstNumber / secondNumber
        }
        
        zyj.text = String(result)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}



