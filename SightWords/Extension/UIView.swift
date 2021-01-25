//
//  UIView.swift
//  SightWords
//
//  Created by Stephanie Ballard on 1/24/21.
//

import UIKit

extension UIView {
    func setDimensions(height: CGFloat, width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
}
