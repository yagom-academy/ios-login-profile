//
//  ProfileBottomMenu.swift
//  LoginProfile
//
//  Created by 이승주 on 2022/01/05.
//

import UIKit

class ProfileBottomMenu: BaseStackView {
    
    init(menuImage: UIImage?,  menuLabeltext: String?) {
        super.init(frame: .zero)
        menuImageView.image = menuImage
        menuLabel.text = menuLabeltext
        
        axis = .vertical
        spacing = 17.58
        distribution = .fillEqually
    }
    
    private lazy var menuImageView: UIImageView = {
        let menuImageView = UIImageView()
        
        menuImageView.translatesAutoresizingMaskIntoConstraints = false
        menuImageView.contentMode = .scaleAspectFit
        
        return menuImageView
    }()
    
    private lazy var menuLabel: UILabel = {
        let menuLabel = UILabel()
        
        menuLabel.translatesAutoresizingMaskIntoConstraints = false
        menuLabel.font = .systemFont(ofSize: Constant.menuLabelFontSize)
        menuLabel.textColor = UIColor(rgb: Constant.menuLabelFontColor)
        
        return menuLabel
    }()
    
    override func configure() {
        super.configure()
        
        addArrangedSubview(menuImageView)
        addArrangedSubview(menuLabel)
    }
}
