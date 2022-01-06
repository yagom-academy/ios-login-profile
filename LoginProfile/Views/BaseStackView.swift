//
//  BaseStackView.swift
//  LoginProfile
//
//  Created by 이승주 on 2022/01/05.
//

import UIKit

protocol Configurable {
    func configure()
}

class BaseStackView: UIStackView, Configurable {
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    @available(*, unavailable)
    required init(coder: NSCoder) {
        fatalError("init(coder: NSCoder) has not been implemented")
    }
    
    func configure() {}
    
    func setUpPosition(view: UIView, top: Int?, bottom: Int?, left: Int?, right: Int?) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: CGFloat(top)).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: CGFloat(bottom)).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: CGFloat(right)).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: CGFloat(left)).isActive = true
        }
    }
}
