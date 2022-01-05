//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let closeButton = CloseButton()
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
        
        let giftButton = GiftButton()
        view.addSubview(giftButton)
        
        giftButton.translatesAutoresizingMaskIntoConstraints = false
        
        giftButton.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 22).isActive = true
        giftButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
        
        /*
        let wonButton = UIButton.init(type: .system)
        view.addSubview(wonButton)
        wonButton.translatesAutoresizingMaskIntoConstraints = false
        
        wonButton.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: 100).isActive = true
        wonButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
        wonButton.setImage(UIImage(named: "won_circle.png"), for: .normal)
         */
    }
    

}
