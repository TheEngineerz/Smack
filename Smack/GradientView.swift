//
//  GradientView.swift
//  Smack
//
//  Created by Usama Sadiq on 01/09/2017.
//  Copyright © 2017 Usama Sadiq. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = UIColor.blue{
        didSet {
            setNeedsLayout()
        }
    }
    @IBInspectable var bottomColor: UIColor = UIColor.green{
        didSet {
            setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = bounds
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
