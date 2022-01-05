//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        idTextField.delegate = self
        pwTextField.delegate = self
    }

    @IBAction func receiveInput(_ sender: UITextField) {
        if let inputLength = sender.text?.count,
            inputLength >= 5 {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor(rgb: Constant.yellow)
            return
        }
        loginButton.isEnabled = false
        loginButton.backgroundColor = UIColor(rgb: Constant.lightgray)
        loginButton.titleLabel?.textColor = UIColor.black
    }
    
    @objc private func loginScreenTap() {
        view.endEditing(true)
    }
    
    private func setUI() {
//        idTextField.underline()
//        pwTextField.underline()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(loginScreenTap))
        loginScrollView.addGestureRecognizer(tapGestureRecognizer)
        
        loginButton.titleLabel?.textColor = UIColor.black
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == idTextField {
            pwTextField.becomeFirstResponder()
            return true
        }
        pwTextField.resignFirstResponder()
        return true
    }
}

extension UITextField {
    func underline() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.placeholderText.cgColor
        border.frame = CGRect(
            x: 0,
            y: self.frame.size.height - width,
            width: self.frame.size.width,
            height: width
        )
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
