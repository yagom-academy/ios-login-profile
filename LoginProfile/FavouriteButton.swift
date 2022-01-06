//
//  LoginProfile - FavouriteButton.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

@IBDesignable
class FavouriteButton: CircleButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        
        let height = bounds.height
        let width = bounds.width
        let drawingWidth = bounds.width * 0.7

        context.beginPath()
        context.setLineWidth(1)
        context.setLineCap(.round)
        context.setLineJoin(.round)
        context.setStrokeColor(UIColor.white.cgColor)
        
        var xCenter = width / 2.0
        let yCenter = height / 2.0
        let radius = drawingWidth / 2.0
        let flip = -1.0
        
        for _ in 0..<3 {
            let theta = 2.0 * Double.pi * (2.0 / 5.0)
            context.move(to: CGPoint(x: xCenter,
                                     y: radius * flip + yCenter))
            
            for corner in 1...5 {
                let x = radius * sin(Double(corner) * theta)
                let y = radius * cos(Double(corner) * theta)
                context.addLine(to: CGPoint(x: x + xCenter,
                                            y: y * flip + yCenter))
            }
            xCenter += (width * 1.5)
        }
        
        context.drawPath(using: .stroke)
        context.closePath()
    }
}
