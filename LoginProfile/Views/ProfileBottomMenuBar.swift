//
//  ProfileBottomMenuStackView.swift
//  LoginProfile
//
//  Created by 이승주 on 2022/01/05.
//

import UIKit

class ProfileBottomMenuBar: BaseStackView {

    init() {
        super.init(frame: .zero)
        
        axis = .horizontal
        distribution = .equalCentering
        alignment = .bottom
    }
    
    private lazy var chatMenu = ProfileMenu(
        menuImage: UIImage(named: "btn_bubble"),
        menuLabeltext: Constant.chatMenuLabelText,
        spacing: CGFloat(17.58)
    )
    
    private lazy var callMenu = ProfileMenu(
        menuImage: UIImage(named: "btn_phone"),
        menuLabeltext: Constant.callMenuLabelText,
        spacing: CGFloat(17.58)
    )
    
    private lazy var kakaoStoryMenu = ProfileMenu(
        menuImage: UIImage(named: "btn_quote"),
        menuLabeltext: Constant.kakaoStoryMenuLabelText,
        spacing: CGFloat(17.58)
    )
    
    override func configure() {
        super.configure()
        
        addArrangedSubview(chatMenu)
        addArrangedSubview(callMenu)
        addArrangedSubview(kakaoStoryMenu)
    }
}
