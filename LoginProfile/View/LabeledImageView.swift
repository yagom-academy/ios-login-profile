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
    
    private var isRoundCorner: Bool = false
    
    override private init(frame: CGRect) {
        super.init(frame: frame)
        axis = .vertical
        spacing = 15
        distribution = .fill
        alignment = .center
        configureUI()
    }
    
    convenience init(image: UIImage?, text: String?, isRoundCorner: Bool, textFont: UIFont? = .preferredFont(forTextStyle: .subheadline)) {
        self.init(frame: .zero)
        imageView.image = image
        imageDescriptionLabel.text = text
        self.imageDescriptionLabel.font = textFont
        self.isRoundCorner = isRoundCorner
    }
    
    convenience init(image: UIImage?, text: String?) {
        self.init(image: image, text: text, isRoundCorner: false)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if isRoundCorner {
            let radius: CGFloat = bounds.size.width * 0.3
            imageView.layer.cornerRadius = radius
        }
    }
    
    private func configureUI(){
        addArrangedSubview(imageView)
        addArrangedSubview(imageDescriptionLabel)
        
        imageView.clipsToBounds = isRoundCorner
    }
    
    func setupImageViewWidthEqaulToLabeledImageView() {
        imageView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    func setUpImageViewWidthToHeightRatio(multiplier: CGFloat) {
        imageView.widthAnchor.constraint(equalTo: imageView.heightAnchor, multiplier: multiplier).isActive = true
    }
}
