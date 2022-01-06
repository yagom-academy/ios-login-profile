//
//  LoginProfile - CloseButton.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@IBDesignable
class CloseButton: UIButton {
    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let height = bounds.height
        let width = bounds.width
        
        context.beginPath()
        context.setLineWidth(1)
        context.setStrokeColor(UIColor.white.cgColor)

        context.move(to: CGPoint(x: width * 0.1,
                                 y: height * 0.1))
        context.addLine(to: CGPoint(x: width * 0.9,
                                    y: height * 0.9))
        context.move(to: CGPoint(x: width * 0.1,
                                 y: height * 0.9))
        context.addLine(to: CGPoint(x: width * 0.9,
                                    y: height * 0.1))
        
        context.drawPath(using: .stroke)
        context.closePath()
    }
}
