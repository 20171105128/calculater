//
//  ViewController.swift
//  calculater
//
//  Created by TAO on 2018/11/16.
//  Copyright © 2018 TAO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp :Double = 0;
    var flag :Double = 0;
    var control_negative:Double = 0;
    var calFlag :Double = 0;
    
    @IBOutlet weak var caculaterDisplay: UITextField!
    
    
    @IBAction func button1(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"1"
        }
        else{
            caculaterDisplay.text = "1"
            
        }
        calFlag = 1
    }
    
    @IBAction func button2(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"2"
        }
        else{
            caculaterDisplay.text = "2"
            
        }
        calFlag = 1
    }
    
    @IBAction func button3(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text = caculaterDisplay.text!+"3"
        }
        else{
            caculaterDisplay.text = "3"
        }
        calFlag = 1
    }
    
    @IBAction func button4(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"4"
        }
        else{
            caculaterDisplay.text = "4"
            
        }
        calFlag = 1
        
    }
    
    @IBAction func button5(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"5"
        }
        else{
            caculaterDisplay.text = "5"
            
        }
        calFlag = 1
    }
    
    @IBAction func button6(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"6"
        }
        else{
            caculaterDisplay.text = "6"
            
        }
        calFlag = 1
    }
    
    @IBAction func button7(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"7"
        }
        else{
            caculaterDisplay.text = "7"
            
        }
        calFlag = 1
    }
    
    @IBAction func button8(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"8"
        }
        else{
            caculaterDisplay.text = "8"
            
        }
        calFlag = 1
    }
    
    @IBAction func button9(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"9"
        }
        else{
            caculaterDisplay.text = "9"
            
        }
        calFlag = 1
    }
    
    @IBAction func button0(_ sender: Any) {
        if calFlag == 1{
            caculaterDisplay.text =  caculaterDisplay.text!+"0"
        }
        else{
            caculaterDisplay.text = "0"
            
        }
        calFlag = 1
    }
    
    @IBAction func buttonadd(_ sender: Any) {
        if flag == 1{
            caculaterDisplay.text = "\(temp + Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 1
    }
    
    @IBAction func buttonminus(_ sender: Any) {
        if flag == 2{
            caculaterDisplay.text = "\(temp - Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 2
    }
    
    @IBAction func buttonplus(_ sender: Any) {
        if flag == 3{
            caculaterDisplay.text = "\(temp * Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 3
    }
    
    @IBAction func buttondivide(_ sender: Any) {
        if flag == 4{
            caculaterDisplay.text = "\(temp / Double(caculaterDisplay.text!)!)"
            
        }
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 4
    }
    
    @IBAction func buttonper(_ sender: Any) {
        temp = Double(caculaterDisplay.text!)!
        calFlag = 2
        flag = 5
    }
    
    @IBAction func buttonclear(_ sender: Any) {
        caculaterDisplay.text = ""
        temp = 0
        flag = 0
        control_negative = 0
        calFlag = 0
    }
    
    @IBAction func buttonback(_ sender: Any) {
        caculaterDisplay.text?.removeLast()
    }
    
    @IBAction func buttonsquare(_ sender: Any) {
        temp =
            Double(caculaterDisplay.text!)!
        caculaterDisplay.text = ""
        flag = 6
    }
    
    @IBAction func buttonnegative(_ sender: Any) {
        if control_negative == 0 {
            caculaterDisplay.text = "-" + caculaterDisplay.text!
            control_negative = 1
        }
        else {
            caculaterDisplay.text?.removeFirst()
            control_negative = 0
        }
    }
    
    @IBAction func buttonpoint(_ sender: Any) {
        caculaterDisplay.text = caculaterDisplay.text!+"."
    }
    
    @IBAction func buttonresult(_ sender: Any) {
        if(flag == 1)
        {
            var sum :Double = 0
            sum = temp + Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum)"
        }
        if(flag == 2)
        {
            var sum1 :Double = 0
            sum1 = temp - Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum1)"
        }
        if(flag == 3)
        {
            var sum2 :Double = 0
            sum2 = temp * Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum2)"
        }
        if(flag == 4)
        {
            var sum3 :Double = 0
            sum3 = temp / Double(caculaterDisplay.text!)!
            caculaterDisplay.text = "\(sum3)"
        }
        if(flag == 5)
        {
            var sum4 :Double = 0
            sum4 = 0.01 * (temp)
            caculaterDisplay.text = "\(sum4)"
        }
        if(flag == 6)
        {
            var sum5 :Double = 0
            sum5 = pow(temp,Double(caculaterDisplay.text!)!)
            caculaterDisplay.text = "\(sum5)"
        }
    }
}
        func viewDidLoad() {
        //super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



