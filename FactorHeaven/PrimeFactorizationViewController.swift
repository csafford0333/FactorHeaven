//
//  PrimeFactorizationViewController.swift
//  FactorHeaven
//
//  Created by student3 on 4/26/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class PrimeFactorizationViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var displayAnswer: UILabel!
    
    let primeArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397]
    var answerArray = [Int]()
    var numberInt = 0
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        answerArray = []
    }
    
    @IBAction func enter(_ sender: UIButton) {
        numberInt = Int(number.text!)!
        findPrimes()
        for i in answerArray {
            displayAnswer.text = displayAnswer.text! + "\(i) "
        }
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
    @IBAction func reset(_ sender: UIButton) {
        counter = 0
        numberInt = 0
        answerArray = []
        displayAnswer.text = ""
        number.text = ""
    }
}

