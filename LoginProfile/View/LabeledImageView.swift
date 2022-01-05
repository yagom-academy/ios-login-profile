//
//  LabeledImageView.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/05.
//

import UIKit

class LabeledImageView: UIStackView {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .white
        return imageView
    }()
    
    let imageDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 15
        distribution = .fill
        alignment = .center
    
        configureUI()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(_ image: UIImage?) {
        imageView.image = image
    }
    
    func setDescriptionLabelText(_ text: String?) {
        imageDescriptionLabel.text = text
    }
}

extension LabeledImageView {
    private func configureUI(){
        addArrangedSubview(imageView)
        addArrangedSubview(imageDescriptionLabel)
    }
}
