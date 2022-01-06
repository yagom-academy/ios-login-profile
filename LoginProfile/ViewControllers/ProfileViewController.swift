//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileBottomMenuBar = ProfileBottomMenuBar()
    private lazy var profileTopMenuBar = ProfileTopMenuBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        setCloseButton()
        setUpPosition()
    }
    
    @objc func touchUpCloseButton() {
        dismiss(animated: true, completion: nil)
    }
    
    private func setCloseButton() {
        let closeButton = CloseButton()
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        closeButton.addTarget(self, action: #selector(touchUpCloseButton), for: .touchUpInside)
    }
    
    private func setUpPosition() {
        view.addSubview(profileBottomMenuBar)
        profileBottomMenuBar.setUpPosition(view: view, top: nil, bottom: -30, left: 34, right: -34)
        
        view.addSubview(profileTopMenuBar)
        profileTopMenuBar.setUpPosition(view: view, top: 20, bottom: nil, left: nil, right: -16)
    }
}
