//
//  LoginProfile - LoginViewController.swift
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
        
        if input.count >= Constant.idValidInputLength {
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
