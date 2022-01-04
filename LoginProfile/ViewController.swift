//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var instructionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func configureInstructionLabel() {
        instructionLabel.numberOfLines = 2
        instructionLabel.text = "사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해 주세요"
    }

}

