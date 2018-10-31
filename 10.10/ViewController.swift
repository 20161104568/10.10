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
    
    var  point: Bool = false//标记是否输入小数点
    
    var isSecond: Bool = false//是否输入第二个数
    
    var sign = 0//判断zyj.text前是否存在符号
    
    var result:Double = 0.0
    
    var pd = 0       //判断加减乘除
    //var decimalPointFlag: Bool = false
    
    //var isSecond: Bool = false
    
    //var operatorFlag: String = ""
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func zyj1(_ sender: Any) {
        if sign == 1{
            zyj.text = "1"
        }
        else{
        zyj.text = zyj.text! + "1"
    }
}
    
    @IBAction func zyj2(_ sender: Any) {
        if sign == 1{
            zyj.text = "2"
        }
        else{
            zyj.text = zyj.text! + "2"
        }
    }
    
    @IBAction func zyj3(_ sender: Any) {
        if sign == 1{
            zyj.text = "3"
        }
        else{
            zyj.text = zyj.text! + "3"
        }
    }
    
    @IBAction func zyj4(_ sender: Any) {
        if sign == 1{
            zyj.text = "4"
        }
        else{
            zyj.text = zyj.text! + "4"
        }
    }
    
    @IBAction func zyj5(_ sender: Any) {
        if sign == 1{
            zyj.text = "5"
        }
        else{
            zyj.text = zyj.text! + "5"
        }
    }
    
    @IBAction func zyj6(_ sender: Any) {
        if sign == 1{
            zyj.text = "6"
        }
        else{
            zyj.text = zyj.text! + "6"
        }
    }
    
    @IBAction func zyj7(_ sender: Any) {
        if sign == 1{
            zyj.text = "7"
        }
        else{
            zyj.text = zyj.text! + "7"
        }
    }
    
    @IBAction func zyj8(_ sender: Any) {
        if sign == 1{
            zyj.text = "8"
        }
        else{
            zyj.text = zyj.text! + "8"
        }
    }
    
    @IBAction func zyj9(_ sender: Any) {
        if sign == 1{
            zyj.text = "9"
        }
        else{
            zyj.text = zyj.text! + "9"
        }
    }
    
    
    @IBAction func zyj0(_ sender: Any) {
        if sign == 1{
            zyj.text = "0"
        }
        else{
            zyj.text = zyj.text! + "0"
        }
    }
    
    @IBAction func point(_ sender: Any) {
        if !point {
            zyj.text = zyj.text! + "."
            if isSecond {
                secondNumber = (zyj.text! as NSString).doubleValue
            }else {
                firstNumber = (zyj.text! as NSString).doubleValue
            }
            
            point = !point
        }
        //zyj.text = zyj.text! + "."
    }
    
    @IBAction func zyjdelete(_ sender: Any) {
        zyj.text = ""
        
        firstNumber = 0
        
        secondNumber = 0
        
        point = false
        
        isSecond = false
        
        
        
    }
    
    @IBAction func zyjadd(_ sender: Any) {
        if zyj.text == ""{
            zyj.text = "0"
            pd = 1
        }else{
           // let firstNumber = Double(zyj.text!)!
           // let secondNumber = Double(zyj.text!)!
            //let result = firstNumber + secondNumber
        
            
            firstNumber = Double(zyj.text!)!
            zyj.text = String(firstNumber)
            zyj.text = ""
            pd = 1
        }
        point = !point
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
        }
        point = !point
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
        }
        point = !point
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
        }
        point = !point
    }
    
    @IBAction func zyjequal(_ sender: Any) {
        //let firstNumber = Double(zyj.text!)!
        //let secondNumber = Double(zyj.text!)!
        secondNumber = Double(zyj.text!)!
        zyj.text = String(secondNumber)
        zyj.text = "0"
        if pd == 1
        {
            let result = firstNumber + secondNumber
            zyj.text = String(result)
        }
        if pd == 2
        {
            let result = firstNumber - secondNumber
            zyj.text = String(result)
        }
        if pd == 3
        {
            let result = firstNumber * secondNumber
            zyj.text = String(result)
        }
        else if pd == 4
        {
            let result = firstNumber / secondNumber
            zyj.text = String(result)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}



