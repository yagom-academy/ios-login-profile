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
    private lazy var profileInfo = ProfileMenu(
        menuImage: UIImage(named: "image_profile"),
        menuLabeltext: "kakao",
        spacing: CGFloat(5)
    )
    private let closeButton = CloseButton()
    private let bottomMenuBarLine = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
  
        setBottomMenuBarLine()
        setComponentsPosition()
        setCloseButton()
    }
    
    @objc func touchUpCloseButton() {
        dismiss(animated: true, completion: nil)
    }
    
    private func setCloseButton() {
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        closeButton.addTarget(self, action: #selector(touchUpCloseButton), for: .touchUpInside)
    }

    private func setBottomMenuBarLine() {
        bottomMenuBarLine.heightAnchor.constraint(equalToConstant: CGFloat(0.5)).isActive = true

        bottomMenuBarLine.translatesAutoresizingMaskIntoConstraints = false
        bottomMenuBarLine.backgroundColor = UIColor(rgb: Constant.bottomMenuColor)
    }
    
    private func setComponentsPosition() {
        view.addSubview(profileTopMenuBar)
        profileTopMenuBar.setPosition(
            layoutGuide: view.safeAreaLayoutGuide,
            top: 20,
            bottom: nil,
            left: nil,
            right: -16,
            centerX: false,
            centerY: false
        )
        
        view.addSubview(profileBottomMenuBar)
        profileBottomMenuBar.setPosition(
            layoutGuide: view.safeAreaLayoutGuide,
            top: nil,
            bottom: -30,
            left: 34,
            right: -34,
            centerX: false,
            centerY: false
        )
        
        view.addSubview(bottomMenuBarLine)
        bottomMenuBarLine.bottomAnchor.constraint(equalTo: profileBottomMenuBar.topAnchor, constant: -25).isActive = true
        bottomMenuBarLine.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bottomMenuBarLine.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        
        view.addSubview(profileInfo)
        profileInfo.setPosition(
            layoutGuide: bottomMenuBarLine.layoutMarginsGuide,
            top: nil,
            bottom: -51,
            left: nil,
            right: nil,
            centerX: true,
            centerY: false
        )
    }
}
