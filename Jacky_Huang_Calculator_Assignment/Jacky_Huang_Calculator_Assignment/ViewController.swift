//
//  ViewController.swift
//  Jacky_Huang_Calculator_Assignment
//
//  Created by Jacky Huang on 11/2/22.
//

import UIKit
import UniformTypeIdentifiers

class ViewController: UIViewController {
    
    @IBOutlet weak var Calculation: UILabel!
    
    var s   : Bool   = true
    var temp: String = ""
    var oper: String = ""
    
    var result: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func clear() {
        temp = ""
        oper = ""
        Calculation.text = ""
    }
    
    func calculate() {
        Calculation.text = String(format: "%.0f", result)
    }
    
    func addValue(_ value: String) {
        temp = temp + value
    }
    
    
    
    
    
    @IBAction func ClearB(_ sender: Any) {
        clear()
    }
    @IBAction func SignB(_ sender: Any) {
        s = !s
    }
    @IBAction func PerB(_ sender: Any) {
        result = result * 0.01
    }
    @IBAction func DivB(_ sender: Any) {
        oper = "/"
    }
    @IBAction func MulB(_ sender: Any) {
        oper = "×"
    }
    @IBAction func SubB(_ sender: Any) {
        oper = "-"
    }
    @IBAction func AddB(_ sender: Any) {
        oper = "+"
    }
    @IBAction func EqualB(_ sender: Any) {
        calculate()
    }
    @IBAction func PointB(_ sender: Any) {
        addValue(".")
    }
    
    @IBAction func ZeroB(_ sender: Any) {
        addValue("0")
    }
    @IBAction func OneB(_ sender: Any) {
        addValue("1")
    }
    @IBAction func TwoB(_ sender: Any) {
        addValue("2")
    }
    @IBAction func ThreeB(_ sender: Any) {
        addValue("3")
    }
    @IBAction func FourB(_ sender: Any) {
        addValue("4")
    }
    @IBAction func FiveB(_ sender: Any) {
        addValue("5")
    }
    @IBAction func SixB(_ sender: Any) {
        addValue("6")
    }
    @IBAction func SevenB(_ sender: Any) {
        addValue("7")
    }
    @IBAction func EightB(_ sender: Any) {
        addValue("8")
    }
    @IBAction func NineB(_ sender: Any) {
        addValue("9")
    }
    
    
    
    
    


}

