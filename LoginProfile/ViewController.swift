//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailOrNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegate()
    }
    
    private func setDelegate() {
        emailOrNumberTextField.delegate = self
    }
   
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if let emailOrNumberText = emailOrNumberTextField.text, emailOrNumberText.isLongerThan(5) {
            loginButton.backgroundColor = UIColor(named: "KakaoYellow")
            loginButton.isEnabled = true
            return
        }
        loginButton.backgroundColor = UIColor.systemGray6
        loginButton.isEnabled = false
    }
}

