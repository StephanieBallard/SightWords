//
//  CurveView.swift
//  SightWords
//
//  Created by Stephanie Ballard on 1/24/21.
//

import UIKit

@IBDesignable

class CurveView: UIView {
    
    override func draw(_ rect: CGRect) {
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(#colorLiteral(red: 0.5490196078, green: 0.5058823529, blue: 0.9647058824, alpha: 1))
            
            let curveHeight: CGFloat = 140
            let leadingCurvePoint = CGPoint(x: 0, y: curveHeight / 2.0)
            let trailingCurvePoint = CGPoint(x: rect.maxX, y: curveHeight / 2.0)
            let hillCurvePoint = CGPoint(x: rect.midX / 2.0, y: -curveHeight / 2.0)
            let valleyCurvePoint = CGPoint(x: rect.maxX * 0.75, y: curveHeight + curveHeight / 2.0)
            
            context.move(to: leadingCurvePoint)
            context.addCurve(to: trailingCurvePoint, control1: hillCurvePoint, control2: valleyCurvePoint)
            context.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            context.addLine(to: CGPoint(x: 0, y: rect.maxY))
            context.addLine(to: leadingCurvePoint)
            context.closePath()
            context.fillPath()
        }
    }
}
