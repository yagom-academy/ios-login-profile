//
//  upperMenuBar.swift
//  LoginProfile
//
//  Created by kakao on 2022/01/06.
//

import UIKit

class ProfileTopMenuBar: BaseStackView {

    init() {
        super.init(frame: .zero)
        
        axis = .horizontal
        distribution = .equalCentering
        spacing = 12
    }
    
    private lazy var wonButton = WonButton()
    private lazy var favouriteButton = FavouriteButton()
    private lazy var giftButton = GiftButton()

    override func configure() {
        super.configure()
        
        addArrangedSubview(wonButton)
        addArrangedSubview(favouriteButton)
        addArrangedSubview(giftButton)
    }
}
