//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!

    @IBAction func changedInput(_ sender: UITextField) {
        print("test")
        let inputLength = sender.text?.count
        print(inputLength)
        if let inputLength = inputLength, inputLength >= 5 {
            print("input changed")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

