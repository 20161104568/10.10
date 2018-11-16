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
    var firstNumber:Double = 0.0//第一个数
    
    var secondNumber:Double = 0.0//第二个数
    
    var thirdNumber:Double = 0.0//第三个数
    
    var d = 0//标记是否输入小数点
    
    var isSecond: Bool = false//是否输入第二个数
    
    //var sign = 0//判断zyj.text前是否存在符号
    
    var result:Double = 0.00
    
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
    
    @IBAction func point(_ sender: Any) {
        if d == 0{
            zyj.text = zyj.text! + "."
            d = 1
            }
            
        else{
            zyj.text = zyj.text!
            
            
        }
        //zyj.text = zyj.text! + "."
    }
    
    @IBAction func zyjdelete(_ sender: Any) {
        zyj.text = ""
        
        firstNumber = 0.0
        
        secondNumber = 0.0
        
        d = 0
        
        isSecond = false
        
        
        
    }
    
    @IBAction func zyjadd(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 1
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 1
            d = 0
            
        }
          //zyj.text = zyj.text! + "+"
        
    }
    
    @IBAction func zyjreduce(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 2
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 2
            d = 0
        }
          //zyj.text = zyj.text! + "-"
        
    }
    
    @IBAction func zyjcheng(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 3
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 3
            d = 0
        }
          //zyj.text = zyj.text! + "*"
    }
    
    @IBAction func zyjchu(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 4
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 4
            d = 0
        }
          //zyj.text = zyj.text! + "/"
    }
    
    @IBAction func pf(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 5
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 5
            d = 0
        }
        
    }
    
    @IBAction func lf(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 6
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 6
            d = 0
        }
        
    }
    
    @IBAction func reciprocal(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 7
        }else{
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 7
            d = 0
        }
        
    }
    @IBAction func zyjequal(_ sender: Any) {
        //secondNumber = Double(zyj.text!)!
        //zyj.text = String(secondNumber)
        //zyj.text = "0"
        if pd == 1
        {
            secondNumber = Double(zyj.text!)!
            zyj.text = String(secondNumber)
            zyj.text = "0"
            let result = firstNumber + secondNumber
            zyj.text = String(format:"%.2lf",result)
        }
        if pd == 2
        {
            secondNumber = Double(zyj.text!)!
            zyj.text = String(secondNumber)
            zyj.text = "0"
            let result = firstNumber - secondNumber
            zyj.text = String(format:"%.2lf",result)
        }
        if pd == 3
        {
            secondNumber = Double(zyj.text!)!
            zyj.text = String(secondNumber)
            zyj.text = "0"
            let result = firstNumber * secondNumber
            zyj.text = String(format:"%.2lf",result)
        }
        else if pd == 4
        {
            secondNumber = Double(zyj.text!)!
            zyj.text = String(secondNumber)
            zyj.text = "0"
            if secondNumber == 0
            {
                zyj.text = "0不能作除数"
            }
            else
            {
            let result = firstNumber / secondNumber
            zyj.text = String(format:"%.2lf",result)
            }
        }
        else if pd == 5
        {
            let result = firstNumber * firstNumber
            zyj.text = String(format:"%.2lf",result)
        }
        else if pd == 6
        {
            let result = firstNumber * firstNumber * firstNumber
            zyj.text = String(format:"%.2lf",result)
        }
        else if pd == 7
        {
            if firstNumber == 0
            {
                zyj.text = "0不能作分母"
            }
            else
            {
            let result = 1/firstNumber
            zyj.text = String(format:"%.2lf",result)
            }
        }
        d = 0
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}



