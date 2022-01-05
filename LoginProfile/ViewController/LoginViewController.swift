//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var emailOrPhoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet var dynamicTypeButtons: [UIButton]!
    
    private let minimumTextLength = 5
    
    var isLoginButtonEnabled: Bool = false {
        didSet(isLoginButtonEnabled) {
            self.toggleLoginButtonEnabled(isLoginButtonEnabled)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureKeyboard()
        configure()
        
    }
    
    @objc func adjustButtonDynamicType(){
        dynamicTypeButtons.forEach { button in
            button.titleLabel?.adjustsFontForContentSizeCategory = true
        }
    }
    
    func configureUI() {
        loginButton.setTitleColor(.labelDarkGrayColor, for: .disabled)
        dynamicTypeButtons.forEach{ button in
            button.titleLabel?.adjustsFontSizeToFitWidth = true
        }
    }
    
    func configureKeyboard() {
        let touch = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        scrollView.addGestureRecognizer(touch)
    }
    
    func configure() {
        NotificationCenter.default.addObserver(self, selector: #selector(adjustButtonDynamicType),
                                               name: UIContentSizeCategory.didChangeNotification, object: nil)
        
        emailOrPhoneNumberTextField.addTarget(self, action: #selector(emailTextFieldDidChange), for: .editingChanged)
        emailOrPhoneNumberTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    func validateEmailInput(_ input: String?) -> Bool {
        guard let input = input else { return false }
        return input.count >= minimumTextLength
    }
    
    func toggleLoginButtonEnabled(_ isEnabled: Bool) {
        loginButton.isEnabled = isEnabled
        
        let buttonBackgroundColor: UIColor? = loginButton.isEnabled ? .enabledLoginButtonColor : .buttonBackgroundColor
        
        loginButton.backgroundColor = buttonBackgroundColor
    }
    
    @objc func emailTextFieldDidChange(_ sender: Any?) {
        isLoginButtonEnabled = validateEmailInput(emailOrPhoneNumberTextField.text)
    }
    
    @objc func dismissKeyboard(_ tapGesture: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        let profileViewController = ProfileViewController()
        profileViewController.modalPresentationStyle = .fullScreen
        present(profileViewController, animated: true, completion: nil)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailOrPhoneNumberTextField:
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            textField.resignFirstResponder()
        default:
            break
        }
        return true
    }
}
