//
//  GCDViewController.swift
//  FactorHeaven
//
//  Created by student3 on 6/6/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class GCDViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var displayAnswer: UILabel!
    
    let primeArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397]
    var answerArray = [Int]()
    var answerArray2 = [Int]()
    var numberInt = 0
    var numberInt2 = 0
    var counter = 0
    var counter2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        answerArray = []
    }
    
    @IBAction func enter(_ sender: UIButton) {
        numberInt = Int(number.text!)!
        numberInt = Int(number2.text!)!
        findPrimes()
        findPrimes2()
        findGCD()
    }
    
    func findPrimes() {
        for i in 0...50 {
            print(numberInt)
            print(i)
            print(primeArray[i])
            print(answerArray)
            if numberInt % primeArray[i] == 0 {
                answerArray.append(primeArray[i])
                numberInt = numberInt / primeArray[i]
                counter += 1
                findPrimes()
            }
        }
    }
    func findPrimes2() {
        for j in 0...50 {
            print(numberInt2)
            print(j)
            print(primeArray[j])
            print(answerArray2)
            if numberInt2 % primeArray[j] == 0 {
                answerArray2.append(primeArray[j])
                numberInt2 = numberInt2 / primeArray[j]
                counter2 += 1
                findPrimes2()
            }
        }
    }
    
    func findGCD() {
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        counter = 0
        numberInt = 0
        answerArray = []
        counter2 = 0
        numberInt2 = 0
        answerArray2 = []
        displayAnswer.text = ""
        number.text = ""
    }

}
