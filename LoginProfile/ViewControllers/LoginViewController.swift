//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        idTextField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func judgeInput(_ sender: UITextField) {
        guard let input = sender.text else {
            return
        }
        
        if input.count >= Constant.validInputLength {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
        
        changeLoginButtonStyle(loginButton.isEnabled)
    }
    
    private func changeLoginButtonStyle(_ state: Bool) {
        if state == true {
            loginButton.backgroundColor = UIColor(rgb: Constant.yellow)
        } else {
            loginButton.backgroundColor = UIColor(rgb: Constant.lightgray)
            loginButton.titleLabel?.textColor = UIColor.black
        }
    }
    
    @objc private func loginScreenTap() {
        view.endEditing(true)
    }
    
    private func setUI() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(loginScreenTap))
        loginScrollView.addGestureRecognizer(tapGestureRecognizer)
        
        loginButton.titleLabel?.textColor = UIColor.black
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == idTextField {
            passwordTextField.becomeFirstResponder()
            return true
        }
        passwordTextField.resignFirstResponder()
        return true
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
