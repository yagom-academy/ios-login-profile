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
        /*
        let closeButton = CloseButton()
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
         */
        

        //Text Label
        let chatLabel = UILabel()
        chatLabel.backgroundColor = UIColor.yellow
        chatLabel.text  = "1:1 채팅"
        chatLabel.textAlignment = .center
        
        let callLabel = UILabel()
        callLabel.backgroundColor = UIColor.yellow
        callLabel.text  = "전화걸기"
        callLabel.textAlignment = .center
        
        let kakaoStoryLabel = UILabel()
        kakaoStoryLabel.backgroundColor = UIColor.yellow
        kakaoStoryLabel.text  = "카카오스토리"
        kakaoStoryLabel.textAlignment = .center
        

        //Stack View
        let stackView   = UIStackView()
        stackView.axis  = NSLayoutConstraint.Axis.horizontal
        stackView.distribution  = UIStackView.Distribution.equalCentering
        stackView.alignment = UIStackView.Alignment.center


        stackView.addArrangedSubview(chatLabel)
        stackView.addArrangedSubview(callLabel)
        stackView.addArrangedSubview(kakaoStoryLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView)

        //Constraints
        stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -64).isActive = true
        stackView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 34).isActive = true
        stackView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -34).isActive = true
        //stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        //stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        //stackView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
    }
}

