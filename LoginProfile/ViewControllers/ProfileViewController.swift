//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileBottomMenuBar = ProfileBottomMenuBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpPosition()
    }
    
    private func setUpPosition() {
        profileBottomMenuBar.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(profileBottomMenuBar)
        
        profileBottomMenuBar.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -64).isActive = true
        profileBottomMenuBar.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 34).isActive = true
        profileBottomMenuBar.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -34).isActive = true
    }
}
