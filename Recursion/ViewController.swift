//
//  ViewController.swift
//  Recursion
//
//  Created by Eric Davenport on 1/23/20.
//  Copyright © 2020 Eric Davenport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func performOperations(_ sender: UIButton) {
    let factorialResults = factorial(4)
    recurse(7)
    countDownToZero(from: -7)
  }
  

    // example 1
  func recurse(_ n: Int) {
    guard n > 0 else { return }  // base case
    print("hi")
    
    recurse(n - 1)  // recursive call  -  6, 5, 4, 3, 2, 1
  }
  
  // example 2
  
  func countDownToZero(from num: Int) {
    guard num >= 0 else { return }  // base case
    print(num) // 20, 19...
    countDownToZero(from: num - 1) // recursive call
    // countDownToZero(19)
    // countDownToZero(18)
    //     ......
    // countDownToZero(0)

  }
  
  // example 3 - factorial
  // formula for finding factorial is n* (n - 1)
  // factorial is used to find the number of permutations of a given case number
  func factorial(_ n:Int)-> Int {
    guard n > 1 else {
      return 1 }   // base case
    return n * factorial(n-1)  // recuresive call
  }
  
  // 4 * factorial(3) -> 24
  // 4 * factorial(3) -> 6
  // 4 * factorial(3) -> 2
  // 4 * factorial(1) -> 1


  
}

