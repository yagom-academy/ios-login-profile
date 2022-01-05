//
//  LabeledImageView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class LabeledImageView: UIStackView {
    

    private let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imageView.image = UIImage.init(systemName: "message.fil")
        imageView.contentMode = .scaleAspectFill
        imageView.tintColor = .white
        return imageView
    }()
    
    private let imageDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.text = "1:1 채팅"
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 15
        distribution = .fillProportionally
        alignment = .center
        addArrangedSubview(imageView)
        addArrangedSubview(imageDescriptionLabel)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LabeledImageView {
    
}
