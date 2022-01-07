//
//  ProfileViewController.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let closeButton: CloseButton = {
        let closeButton = CloseButton()
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        return closeButton
    }()
    private let favouriteButton: FavouriteButton = {
        let favouriteButton = FavouriteButton()
        favouriteButton.translatesAutoresizingMaskIntoConstraints = false
        return favouriteButton
    }()
    private let giftButton: GiftButton = {
        let giftButton = GiftButton()
        giftButton.translatesAutoresizingMaskIntoConstraints = false
        return giftButton
    }()
    private let wonButton: WonButton = {
        let wonButton = WonButton()
        wonButton.translatesAutoresizingMaskIntoConstraints = false
        return wonButton
    }()
    private let dividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let topButtonStackView: UIStackView = {
        let stackView: UIStackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = Constants.topButtonSpacing
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        return stackView
    }()
    
    private let chatLabeledImageView: LabeledImageView = {
        let image = UIImage(systemName: "message.fill")
        let text = "1:1 채팅"
        let labeledImageView = LabeledImageView(image: image, text: text)
        return labeledImageView
    }()
    
    private let phoneLabeledImageView: LabeledImageView = {
        let image = UIImage(systemName: "phone.fill")
        let text = "통화하기"
        let labeledImageView = LabeledImageView(image: image, text: text)
        return labeledImageView
    }()
    
    private let storyLabeledImageView: LabeledImageView = {
        let image = UIImage(systemName: "quote.bubble.fill")
        let text = "카카오스토리"
        let labeledImageView = LabeledImageView(image: image, text: text)
        return labeledImageView
    }()
    
    private let bottomLabeledImageStackView: UIStackView = {
        let stackView: UIStackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.alignment = .center
        return stackView
    }()
    
    private let profileView: LabeledImageView = {
        let image = UIImage(named: "yagom")
        let text = "yagom"
        let profileView = LabeledImageView(type: .profile, image: image, text: text)
        profileView.translatesAutoresizingMaskIntoConstraints = false
        return profileView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
}

extension ProfileViewController {
    
    private func configureUI() {
        view.backgroundColor = .black
        configureTopButtonStackView()
        configureBottomLabeledImageStackView()
        
        setupSubviews()
        setupConstraints()
    }
    
    private func setupSubviews() {
        view.addSubview(profileView)
        view.addSubview(closeButton)
        view.addSubview(topButtonStackView)
        view.addSubview(bottomLabeledImageStackView)
        view.addSubview(dividerView)
    }
    
    private func setupConstraints() {
        profileView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.25).isActive = true
        profileView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        profileView.bottomAnchor.constraint(equalTo: bottomLabeledImageStackView.topAnchor, constant: -76).isActive = true
        
        dividerView.backgroundColor = .white.withAlphaComponent(0.3)
        dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        dividerView.bottomAnchor.constraint(equalTo: bottomLabeledImageStackView.topAnchor, constant: -25).isActive = true
        
        closeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        closeButton.widthAnchor.constraint(equalTo: closeButton.heightAnchor).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 22).isActive = true
        
        topButtonStackView.centerYAnchor.constraint(equalTo: closeButton.centerYAnchor).isActive = true
        topButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
        topButtonStackView.leadingAnchor.constraint(lessThanOrEqualTo: closeButton.trailingAnchor, constant: 213).isActive = true
        topButtonStackView.heightAnchor.constraint(equalToConstant: Constants.topButtonHeight).isActive = true
        
        bottomLabeledImageStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -64).isActive = true
        bottomLabeledImageStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 35).isActive = true
        bottomLabeledImageStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35).isActive = true
        
        favouriteButton.widthAnchor.constraint(equalTo: favouriteButton.heightAnchor).isActive = true
        
        giftButton.widthAnchor.constraint(equalTo: giftButton.heightAnchor).isActive = true
        
        wonButton.widthAnchor.constraint(equalTo: wonButton.heightAnchor).isActive = true
    }
    
    private func configureTopButtonStackView() {
        topButtonStackView.addArrangedSubview(giftButton)
        topButtonStackView.addArrangedSubview(wonButton)
        topButtonStackView.addArrangedSubview(favouriteButton)
    }
    
    private func configureBottomLabeledImageStackView() {
        bottomLabeledImageStackView.addArrangedSubview(chatLabeledImageView)
        bottomLabeledImageStackView.addArrangedSubview(phoneLabeledImageView)
        bottomLabeledImageStackView.addArrangedSubview(storyLabeledImageView)
    }
    
    private enum Constants {
        static let topButtonHeight: CGFloat = 26
        static let topButtonSpacing: CGFloat = 12
    }
}
