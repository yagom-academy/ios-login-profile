//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by Jinwook Huh on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {

    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        let backgroundImage = UIImage(named: "backgroundImg")
        imageView.image = backgroundImage
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var closeButton: CloseButton = {
        let button = CloseButton()
        button.addTarget(self, action: #selector(closeButtonTouchUp), for: .touchUpInside)
        return button
    }()
    
    lazy var giftButton: GiftButton = {
        let button = GiftButton()
        return button
    }()
    
    lazy var wonButton: WonButton = {
        let button = WonButton()
        return button
    }()
    
    lazy var favouriteButton: FavouriteButton = {
        let button = FavouriteButton()
        return button
    }()
    
    lazy var upperButtonStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.spacing = 12
        return stackView
    }()
    
    lazy var messageButton: UIButton = {
        let button = UIButton()
        let buttonImg = UIImage(named: "btn_bubble")
        button.setImage(buttonImg, for: .normal)
        button.tintColor = UIColor.white
        return button
    }()
    
    lazy var phoneButton: UIButton = {
        let button = UIButton()
        let buttonImg = UIImage(named: "btn_phone")
        button.setImage(buttonImg, for: .normal)
        button.tintColor = UIColor.white
        return button
    }()
        
    lazy var quoteButton: UIButton = {
        let button = UIButton()
        let buttonImg = UIImage(named: "btn_quote")
        button.setImage(buttonImg, for: .normal)
        button.tintColor = UIColor.white
        return button
    }()
    
    lazy var lowerButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "1:1 채팅"
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var phoneLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "통화하기"
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var quoteLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.text = "카카오스토리"
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var separatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.3)
        return view
    }()
    
    lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.preferredFont(forTextStyle: .title3)
        label.text = "brendan"
        label.textColor = UIColor.white
        return label
    }()
    
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        let profileImage = UIImage(named: "profileImg")
        imageView.image = profileImage
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
            
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        layoutBackgroundImageView()
        layoutCloseButton(withSize: 22)
        layoutUpperButtonStackView(withSize: 26)
        layoutLowerButtonStackView()
        layoutButtonLabels()
        layoutSeparatorView()
        layoutProfileInfo()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func layoutBackgroundImageView() {
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func layoutCloseButton(withSize size: CGFloat) {
        view.addSubview(closeButton)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.widthAnchor.constraint(equalToConstant: size).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: size).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    }

    private func layoutUpperButtonStackView(withSize size: CGFloat) {
        view.addSubview(upperButtonStackView)
        
        upperButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        upperButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        upperButtonStackView.centerYAnchor.constraint(equalTo: closeButton.centerYAnchor).isActive = true
        
        [giftButton, wonButton, favouriteButton].forEach { button in
            button.widthAnchor.constraint(equalToConstant: size).isActive = true
            button.heightAnchor.constraint(equalToConstant: size).isActive = true
            upperButtonStackView.addArrangedSubview(button)
        }
    }
    
    private func layoutLowerButtonStackView() {
        view.addSubview(lowerButtonStackView)

        let safeArea = view.safeAreaLayoutGuide
        lowerButtonStackView.centerXAnchor.constraint(equalTo: safeArea.centerXAnchor).isActive = true
        lowerButtonStackView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -50).isActive = true
        lowerButtonStackView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor).isActive = true
        lowerButtonStackView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor).isActive = true
        
        lowerButtonStackView.addArrangedSubview(messageButton)
        lowerButtonStackView.addArrangedSubview(phoneButton)
        lowerButtonStackView.addArrangedSubview(quoteButton)
    }
    
    private func layoutButtonLabels() {
        view.addSubview(messageLabel)
        view.addSubview(phoneLabel)
        view.addSubview(quoteLabel)
        
        let labelButtonPairs: [(UILabel, UIButton)] = [(messageLabel, messageButton),
                                                         (phoneLabel, phoneButton),
                                                         (quoteLabel, quoteButton)]
        
        labelButtonPairs.forEach { pair in
            let (label, button) = pair
            label.translatesAutoresizingMaskIntoConstraints = false
            label.centerXAnchor.constraint(equalTo: button.centerXAnchor).isActive = true
            label.topAnchor.constraint(equalTo: lowerButtonStackView.bottomAnchor, constant: 15).isActive = true
        }
    }
    
    private func layoutSeparatorView() {
        view.addSubview(separatorView)
        
        separatorView.translatesAutoresizingMaskIntoConstraints = false
        separatorView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        separatorView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        separatorView.bottomAnchor.constraint(equalTo: lowerButtonStackView.topAnchor, constant: -25).isActive = true
    }
    
    private func layoutProfileInfo() {
        view.addSubview(profileNameLabel)
        view.addSubview(profileImageView)
        
        let safeArea = view.safeAreaLayoutGuide
        profileNameLabel.translatesAutoresizingMaskIntoConstraints = false
        profileNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileNameLabel.bottomAnchor.constraint(equalTo: separatorView.topAnchor, constant: -50).isActive = true
        
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileImageView.bottomAnchor.constraint(equalTo: profileNameLabel.topAnchor, constant: -5).isActive = true
        profileImageView.widthAnchor.constraint(equalTo: safeArea.widthAnchor, multiplier: 0.25).isActive = true
        profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor).isActive = true
        
        profileImageView.layer.cornerRadius = profileImageView.bounds.width * 0.3
        profileImageView.clipsToBounds = true
    }
    
    @objc func closeButtonTouchUp() {
        dismiss(animated: true, completion: nil)
    }
    
}
