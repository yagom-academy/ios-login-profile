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
        if let inputLength = sender.text?.count, inputLength >= 5 {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor(rgb: 0xFBE64C)
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = UIColor(rgb: 0xF6F6F6)
        }
    }
    
    private func setUI() {
        idTextField.underline()
        pwTextField.underline()
//        loginButton.setTitleColor(UIColor.black, for: .disabled)
//        loginButton.titleLabel?.font = [UIFont systemFontSize: 11]
    }
}

extension UITextField {
    func underline() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.placeholderText.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height + width, width: self.frame.size.width, height: 1)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: Int = 0xFF) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(alpha) / 255.0
        )
    }

    convenience init(rgb: Int) {
        self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
        )
    }
}
