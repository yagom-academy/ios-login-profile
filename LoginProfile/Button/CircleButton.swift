//
//  LoginProfile - CircleButton.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@IBDesignable
class CircleButton: UIButton {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let height = bounds.height
        let width = bounds.width
        
        let circleRect = bounds.insetBy(dx: width * 0.05,
                                        dy: height * 0.05)
        
        context.beginPath()
        context.setLineWidth(1)
        context.setStrokeColor(UIColor.white.cgColor)
        context.addEllipse(in: circleRect)
        context.drawPath(using: .stroke)
        context.closePath()
    }
}
