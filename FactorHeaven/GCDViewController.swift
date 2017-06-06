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
    var numberOnePrimes = [Int]()
    var numberTwoPrimes = [Int]()
    var answerArray = [Int]()
    var numberInt = 0
    var numberInt2 = 0
    var counter = 0
    var counter2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        numberOnePrimes = []
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
            print(numberOnePrimes)
            if numberInt % primeArray[i] == 0 {
                numberOnePrimes.append(primeArray[i])
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
            print(numberTwoPrimes)
            if numberInt2 % primeArray[j] == 0 {
                numberTwoPrimes.append(primeArray[j])
                numberInt2 = numberInt2 / primeArray[j]
                counter2 += 1
                findPrimes2()
            }
        }
    }
    var counterNumberOne = 0
    var counterNumberTwo = 0
    func findGCD() {
        for _ in 0...50 {
            if numberOnePrimes[counterNumberOne] == numberTwoPrimes[counterNumberTwo] {
                answerArray.append(numberOnePrimes[counterNumberOne])
                numberOnePrimes.remove(at: numberOnePrimes[counterNumberOne])
                numberTwoPrimes.remove(at: numberTwoPrimes[counterNumberTwo])
                if counterNumberOne + 1 <= numberOnePrimes.count {
                    counterNumberOne += 1
                }
                if counterNumberTwo + 1 <= numberTwoPrimes.count {
                    counterNumberOne += 1
                }
                print(answerArray)
            }
        }
    }
    
    @IBAction func reset(_ sender: UIButton) {
        counter = 0
        numberInt = 0
        numberOnePrimes = []
        counter2 = 0
        numberInt2 = 0
        numberTwoPrimes = []
        displayAnswer.text = ""
        number.text = ""
    }

}
