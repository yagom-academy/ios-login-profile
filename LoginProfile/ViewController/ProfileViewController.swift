//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var closeButton: CloseButton = CloseButton()
    private lazy var favouriteButton: FavouriteButton = FavouriteButton()
    private lazy var giftButton: GiftButton = GiftButton()
    private lazy var wonButton: WonButton = WonButton()
    private lazy var topButtonStackView: UIStackView = {
        let stackView: UIStackView = UIStackView(arrangedSubviews: [giftButton, wonButton, favouriteButton])
        stackView.axis = .horizontal
        stackView.spacing = topButtonSpacing
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        return stackView
    }()
    
    let topButtonHeight: CGFloat = 26
    let topButtonSpacing: CGFloat = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        configureUI()
        
        let temp = LabeledImageView()
        
        temp.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        temp.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        temp.widthAnchor.constraint(equalToConstant: 20).isActive = true
        temp.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
}

extension ProfileViewController {
    
    private func configureUI() {
        configureCloseButton()
        configureTopButtonStackView()
        configureFavouriteButton()
        configureGiftButton()
        configureWonButton()
    }
    
    func configureCloseButton() {
        view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        closeButton.widthAnchor.constraint(equalTo: closeButton.heightAnchor).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
    }
    
    func configureTopButtonStackView() {
        view.addSubview(topButtonStackView)
        topButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        topButtonStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        topButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        
        let topButtonCount = CGFloat(topButtonStackView.arrangedSubviews.count)
        let topButtonStackViewWidth: CGFloat = topButtonHeight * topButtonCount + topButtonSpacing * (topButtonCount - 1)
        topButtonStackView.widthAnchor.constraint(equalToConstant: topButtonStackViewWidth).isActive = true
    }
    
    func configureFavouriteButton() {
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        favouriteButton.widthAnchor.constraint(equalTo: favouriteButton.heightAnchor).isActive = true
    }
    
    func configureGiftButton() {
        giftButton.translatesAutoresizingMaskIntoConstraints = false
        giftButton.widthAnchor.constraint(equalTo: giftButton.heightAnchor).isActive = true
    }
    
    func configureWonButton() {
        wonButton.translatesAutoresizingMaskIntoConstraints = false
        wonButton.widthAnchor.constraint(equalTo: wonButton.heightAnchor).isActive = true
    }
}

