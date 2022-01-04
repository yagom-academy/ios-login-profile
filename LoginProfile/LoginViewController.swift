//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var emailOrPhoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailOrPhoneNumber.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    
    @objc
    func emailTextFieldDidChange(_ sender: UITextField?) {
        guard let text = sender?.text, text.count >= 5 else {
            activateButton(false)
            return
        }
        activateButton(true)
    }
    
    func activateButton(_ bool: Bool) {
        loginButton.backgroundColor = bool ? .systemYellow : .systemGray5
        self.loginButton.isEnabled = bool
    }
}

