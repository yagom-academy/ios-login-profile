//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }

    @IBAction func changedInput(_ sender: UITextField) {
        print("test")
        let inputLength = sender.text?.count
        print(inputLength)
        if let inputLength = inputLength, inputLength >= 5 {
            print("input changed")
        }
    }
    
    private func setUI() {
        idTextField.underlined()
        pwTextField.underlined()
    }
}

extension UITextField {
    func underlined() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.placeholderText.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
