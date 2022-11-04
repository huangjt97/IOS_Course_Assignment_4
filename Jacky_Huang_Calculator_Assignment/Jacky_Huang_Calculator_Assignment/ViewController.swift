//
//  ViewController.swift
//  Jacky_Huang_Calculator_Assignment
//
//  Created by Jacky Huang on 11/2/22.
//

import UIKit
import UniformTypeIdentifiers

class ViewController: UIViewController {
    
    @IBOutlet weak var CalculationProcess: UILabel!
    @IBOutlet weak var CalculationResult: UILabel!
    var sign: String = ""
    var temp: String = ""
    var oper: String = ""
    var lastProcess: String = ""
    
    var lastResult: Double? = nil
    var result    : Double  = 0
    
    func clear() {
        sign = ""
        temp = ""
        oper = ""
        lastProcess = ""
        CalculationProcess.text = ""
        CalculationResult.text  = ""
        lastResult = nil
    }
    
    func addValue(_ value: String) {
        temp = temp + value
    }
    
    func addSign(_ op: String) {
        if let check = lastResult {
            if temp != "" {
                if oper != "" {
                    lastResult  = operate(check, oper, Double(sign + temp)!)
                    lastProcess = lastProcess + oper + sign + temp
                    temp = ""
                    sign = ""
                } else {
                    lastResult = Double(sign + temp)!
                    lastProcess = sign + temp
                    sign = ""
                    temp = ""
                }
                oper = op
            } else {
                sign = ""
                oper = op
            }
        } else {
            if temp != "" {
                lastProcess = temp
                lastResult = Double(sign + temp)
                temp = ""
                sign = ""
            }
            oper = op
        }
    }
    
    func showProcess() {
        CalculationProcess.text = lastProcess + oper + sign + temp
    }
    
    func operate(_ answer:Double,_ o: String, _ num: Double) -> Double {
        switch o {
        case "/":
            return (answer / num)
        case "×":
            return (answer * num)
        case "-":
            return (answer - num)
        case "+":
            return (answer + num)
        default :
            return num
        }
    }
    
    func showResult() {
        if temp != "" {
            if let check = lastResult {
                result = check
                if (oper == "/") && (Double(sign + temp) == 0) {
                    CalculationResult.text = "ERROR"
                    clear()
                } else {
                    result = operate(result, oper, Double(sign + temp)!)
                }
                if result == Double(Int(result)) {
                    CalculationResult.text = String(format: "%.0f", result)
                } else {
                    CalculationResult.text = String(result)
                }
            } else {
                CalculationResult.text = sign + temp
            }
        } else {
            if let check = lastResult {
                if check == Double(Int(check)) {
                    CalculationResult.text = String(format: "%.0f", check)
                } else {
                    CalculationResult.text = String(check)
                }
            } else {
                CalculationResult.text = ""
            }
        }
    }
    
    
    
    @IBAction func ClearB(_ sender: Any) {
        clear()
    }
    @IBAction func SignB(_ sender: Any) {
        if oper == "-" {
            oper = "+"
        } else if oper == "+" {
            oper = "-"
        } else {
            if sign == "" {
                sign = "-"
            } else {
                sign = ""
            }
        }
        showResult()
        showProcess()
    }
    @IBAction func PerB(_ sender: Any) {
        if (temp != "") {
            lastProcess = lastProcess + oper + sign + temp + "%"
            if let check = lastResult {
                lastResult = operate(check, oper, Double(sign + temp)! * 0.01)
            } else {
                lastResult = Double(sign + temp)! * 0.01
            }
            temp = ""
            sign = ""
            oper = "×"
            showResult()
            lastProcess = CalculationResult.text!
            CalculationProcess.text = CalculationResult.text
        } else {
            if let check = lastResult {
                lastResult = check * 0.01
                showResult()
                lastProcess = CalculationResult.text!
                temp = ""
                sign = ""
                oper = "×"
                CalculationProcess.text = CalculationResult.text
            } else {
                CalculationResult.text = "ERROR"
                clear()
            }
        }
    }
    @IBAction func DivB(_ sender: Any) {
        addSign("/")
        showProcess()
        showResult()
    }
    @IBAction func MulB(_ sender: Any) {
        addSign("×")
        showProcess()
        showResult()
    }
    @IBAction func SubB(_ sender: Any) {
        addSign("-")
        showProcess()
        showResult()
    }
    @IBAction func AddB(_ sender: Any) {
        addSign("+")
        showProcess()
        showResult()
    }
    @IBAction func EqualsB(_ sender: Any) {
        lastResult = Double (CalculationResult.text!)
        CalculationProcess.text = CalculationResult.text
    }
    @IBAction func PointB(_ sender: Any) {
        addValue(".")
        showProcess()
        showResult()
    }
    @IBAction func ZeroB(_ sender: Any) {
        addValue("0")
        showProcess()
        showResult()
    }
    @IBAction func OneB(_ sender: Any) {
        addValue("1")
        showProcess()
        showResult()
    }
    @IBAction func TwoB(_ sender: Any) {
        addValue("2")
        showProcess()
        showResult()
    }
    @IBAction func ThreeB(_ sender: Any) {
        addValue("3")
        showProcess()
        showResult()
    }
    @IBAction func FourB(_ sender: Any) {
        addValue("4")
        showProcess()
        showResult()
    }
    @IBAction func FiveB(_ sender: Any) {
        addValue("5")
        showProcess()
        showResult()
    }
    @IBAction func SixB(_ sender: Any) {
        addValue("6")
        showProcess()
        showResult()
    }
    @IBAction func SevenB(_ sender: Any) {
        addValue("7")
        showProcess()
        showResult()
    }
    @IBAction func EightB(_ sender: Any) {
        addValue("8")
        showProcess()
        showResult()
    }
    @IBAction func NineB(_ sender: Any) {
        addValue("9")
        showProcess()
        showResult()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    


}

