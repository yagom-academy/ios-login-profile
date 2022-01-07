//
//  LabeledImageView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class LabeledImageView: UIStackView {
    
    enum ViewType {
        case profile
        case normal
    }
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    private let imageDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    private let viewType: ViewType

    init(type: ViewType = .normal, image: UIImage?, text: String?) {
        viewType = type
        super.init(frame: .zero)

        imageView.image = image
        imageDescriptionLabel.text = text
        
        configureUI()
        configureConstraints()
        configureStackViewProperties()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if viewType == .profile {
            let radius: CGFloat = bounds.size.width * 0.3
            imageView.layer.cornerRadius = radius
        }
    }
    
    private func configureStackViewProperties() {
        axis = .vertical
        spacing = viewType == .normal ? 15 : 5
        distribution = .fill
        alignment = .center
    }
    
    private func configureUI(){
        addArrangedSubview(imageView)
        addArrangedSubview(imageDescriptionLabel)
        
        imageView.clipsToBounds = viewType == .profile
        
        let font: UIFont = viewType == .normal ? .preferredFont(forTextStyle: .subheadline) : .preferredFont(forTextStyle: .title3)
        imageDescriptionLabel.font = font
        
    }
    
    private func configureConstraints() {
        if viewType == .profile {
            imageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
            imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor).isActive = true
        }
    }
}
