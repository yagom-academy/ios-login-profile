//
//  LoginProfile - GiftButton.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

extension Int {
    var degreesToRadians: CGFloat { return CGFloat(self) * .pi / 180 }
}

@IBDesignable
class GiftButton: CircleButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let height = bounds.height
        let width = bounds.width

        context.beginPath()
        context.setLineWidth(1)
        context.setStrokeColor(UIColor.white.cgColor)
        
        let sideOne = bounds.width * 0.4 * 0.5
        let sideTwo = bounds.height * 0.3 * 0.5
        let arcRadius = sqrt(sideOne*sideOne + sideTwo*sideTwo)/2

        context.addArc(center: CGPoint(x: width * 0.4, y: height * 0.45), radius: arcRadius, startAngle: 340.degreesToRadians, endAngle: 135.degreesToRadians, clockwise: true)

        context.addLine(to: CGPoint(x: rect.width/2, y: rect.height * 0.8))

        context.addArc(center: CGPoint(x: width * 0.6, y: height * 0.45), radius: arcRadius, startAngle: 45.degreesToRadians, endAngle: 200.degreesToRadians, clockwise: true)

        context.drawPath(using: .stroke)
        context.closePath()
    }
}
