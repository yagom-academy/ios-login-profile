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
  
        setUpPosition()
        setCloseButton()
        setBottomMenuBarLine()
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

    private func setBottomMenuBarLine() {
        let bottomMenuBarLine = UIView()
        bottomMenuBarLine.heightAnchor.constraint(equalToConstant: CGFloat(0.5)).isActive = true
        bottomMenuBarLine.widthAnchor.constraint(equalToConstant: CGFloat(10000)).isActive = true

        bottomMenuBarLine.translatesAutoresizingMaskIntoConstraints = false
        bottomMenuBarLine.backgroundColor = UIColor(rgb: Constant.bottomMenuColor)
        view.addSubview(bottomMenuBarLine)

        bottomMenuBarLine.bottomAnchor.constraint(equalTo: profileBottomMenuBar.topAnchor, constant: -25).isActive = true
        bottomMenuBarLine.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
    private func setUpPosition() {
        view.addSubview(profileBottomMenuBar)
        profileBottomMenuBar.setUpPosition(layoutGuide: view.safeAreaLayoutGuide, top: nil, bottom: -30, left: 34, right: -34)
        
        view.addSubview(profileTopMenuBar)
        profileTopMenuBar.setUpPosition(layoutGuide: view.safeAreaLayoutGuide, top: 20, bottom: nil, left: nil, right: -16)
    }
}
