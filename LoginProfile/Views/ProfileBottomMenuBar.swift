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
    }
    
    private lazy var chatMenu = ProfileBottomMenu(
        menuImage: UIImage(named: "btn_bubble"),
        menuLabeltext: Constant.chatMenuLabelText
    )
    
    private lazy var callMenu = ProfileBottomMenu(
        menuImage: UIImage(named: "btn_phone"),
        menuLabeltext: Constant.callMenuLabelText
    )
    
    private lazy var kakaoStoryMenu = ProfileBottomMenu(
        menuImage: UIImage(named: "btn_quote"),
        menuLabeltext: Constant.kakaoStoryMenuLabelText
    )
    
    override func configure() {
        super.configure()
        
        addArrangedSubview(chatMenu)
        addArrangedSubview(callMenu)
        addArrangedSubview(kakaoStoryMenu)
    }
}
