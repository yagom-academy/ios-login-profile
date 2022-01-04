//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    var validateResults: [Bool] = [false, false] {
        didSet(results) {
            var isEnabled = true
            for isValidate in results {
                isEnabled = isEnabled && isValidate
            }
            self.toggleLoginButtonEnabled(isEnabled)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        loginButton.setTitleColor(.labelDarkGrayColor, for: .disabled)
        emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange), for: .editingChanged)
        pwTextField.addTarget(self, action: #selector(passwordTextFieldDidChange), for: .editingChanged)
        let touch = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        scrollView.addGestureRecognizer(touch)
        emailTextField.delegate = self
        pwTextField.delegate = self
    }
    
    func validateEmailInput(_ input: String?) -> Bool {
        guard let input = input else { return false }
        return input.count >= 5
    }
    
    func validatePasswordInput(_ input: String?) -> Bool {
        guard let input = input else { return false }
        return input.count >= 5
    }
    
    func toggleLoginButtonEnabled(_ isEnabled: Bool) {
        loginButton.isEnabled = isEnabled
        
        let buttonBackgroundColor: UIColor? = loginButton.isEnabled ? .enabledLoginButtonColor : .buttonBackgroundColor
        
        loginButton.backgroundColor = buttonBackgroundColor
    }
    
    @objc func emailTextFieldDidChange(_ sender: Any?) {
        validateResults[0] = validateEmailInput(emailTextField.text)
    }
    
    @objc func passwordTextFieldDidChange(_ sender: Any?) {
        validateResults[1] = validatePasswordInput(pwTextField.text)
    }
    
    @objc func dismissKeyboard(_ tapGesture: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
