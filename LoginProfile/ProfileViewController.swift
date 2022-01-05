//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by Jinwook Huh on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.black
        let safeArea = view.safeAreaLayoutGuide
        
        let closeButton = CloseButton()
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 22).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 22).isActive = true
        closeButton.addTarget(self, action: #selector(closeButtonTouchUp), for: .touchUpInside)
    }
    
    
    @objc func closeButtonTouchUp() {
        dismiss(animated: true, completion: nil)
    }
    

}
