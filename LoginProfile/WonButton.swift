//
//  LoginProfile - WonButton.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@IBDesignable
class WonButton: CircleButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let height = bounds.height
        let width = bounds.width
        
        context.beginPath()
        context.setLineWidth(1)
        context.setLineJoin(.round)
        context.setStrokeColor(UIColor.white.cgColor)

        context.move(to: CGPoint(x: width * 0.3,
                                 y: height * 0.3))
        context.addLine(to: CGPoint(x: width * 0.4,
                                    y: height * 0.7))
        context.addLine(to: CGPoint(x: width * 0.5,
                                    y: height * 0.3))
        context.addLine(to: CGPoint(x: width * 0.6,
                                    y: height * 0.7))
        context.addLine(to: CGPoint(x: width * 0.7,
                                    y: height * 0.3))
        context.move(to: CGPoint(x: width * 0.25,
                                    y: height * 0.45))
        context.addLine(to: CGPoint(x: width * 0.75,
                                    y: height * 0.45))

        context.drawPath(using: .stroke)
        context.closePath()
    }
}
