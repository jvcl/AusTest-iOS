//
//  PaddedLabel.swift
//  AustralianCitizenshipTest
//
//  Created by Jorge on 3/05/2015.
//  Copyright (c) 2015 Innovus. All rights reserved.
//

import UIKit

class PaddedLabel: UILabel {
    
    var edgeInsets:UIEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    
    override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var insets = self.edgeInsets
        var rect = super.textRectForBounds(UIEdgeInsetsInsetRect(bounds, insets), limitedToNumberOfLines: numberOfLines)
        rect.origin.x -= insets.left
        rect.origin.y -= insets.top
        rect.size.width += (insets.left + insets.right)
        rect.size.height += (insets.top + insets.bottom)
        return rect
    }

    override func drawTextInRect(rect: CGRect) {
        super.drawTextInRect(UIEdgeInsetsInsetRect(rect, self.edgeInsets))
    }
}