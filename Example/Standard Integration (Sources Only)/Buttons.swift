//
//  Buttons.swift
//  Standard Integration (Sources Only)
//
//  Created by Ben Guo on 4/25/16.
//  Copyright © 2016 Stripe. All rights reserved.
//

import UIKit
import Stripe

class HighlightingButton: UIButton {
    var highlightColor = UIColor(white: 0, alpha: 0.05)

    convenience init(highlightColor: UIColor) {
        self.init()
        self.highlightColor = highlightColor
    }

    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                self.backgroundColor = self.highlightColor
            } else {
                self.backgroundColor = .clear
            }
        }
    }
}

class BuyButton: UIButton {
    static let defaultHeight = CGFloat(52)
    var disabledColor = UIColor.lightGray
    var enabledColor = UIColor.stripeBrightGreen
    let secondShadowView = UIView()

    override var isEnabled: Bool {
        didSet {
            let color = isEnabled ? enabledColor : disabledColor
            self.setTitleColor(.white, for: UIControlState())
            self.titleLabel!.font = UIFont.boldSystemFont(ofSize: 20)
            backgroundColor = color
        }
    }

    init(enabled: Bool, theme: STPTheme) {
        super.init(frame: .zero)
        layer.cornerRadius = 8
        
        // Shadow
        layer.shadowOpacity = 0.10
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 7
        layer.shadowOffset = CGSize(width: 0, height: 7)
        
        secondShadowView.layer.shadowOpacity = 1 // .08
        secondShadowView.layer.cornerRadius = layer.cornerRadius
        secondShadowView.layer.shadowColor = UIColor.red.cgColor
        secondShadowView.layer.shadowRadius = 100
        secondShadowView.layer.shadowOffset = CGSize(width: 0, height: 3)
//        addSubview(secondShadowView)
//        secondShadowView.translatesAutoresizingMaskIntoConstraints = false
//        secondShadowView.anchorToSuperviewAnchors()

        self.setTitle("Buy", for: UIControlState())
        self.isEnabled = enabled
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
