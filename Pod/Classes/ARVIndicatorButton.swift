//
//  ARVIndicatorButton.swift
//  ARVIndicatorButton
//
//  Created by Arvindh Sukumar on 14/03/15.
//  Copyright (c) 2015 Arvindh Sukumar. All rights reserved.
//

import UIKit

class ARVIndicatorButton: UIButton {

    var indicators: [UIBezierPath] = []
    var indicatorColor: UIColor = UIColor(white: 0.9, alpha: 1)
    override var highlighted: Bool {
        didSet {
            if highlighted {
                self.backgroundColor = UIColor(white: 0.95, alpha: 1)
                self.indicatorColor = UIColor(white: 0.7, alpha: 1)
            }
            else {
                self.backgroundColor = UIColor.whiteColor()
                self.indicatorColor = UIColor(white: 0.9, alpha: 1)
            }
           

            self.setNeedsDisplay()
        }
    }
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect)
    {
        // Drawing code
        //// Color Declarations
       
        let color = self.indicatorColor
        
        
        let indicatorVerticalMargin: CGFloat = 3
        let indicatorHeight: CGFloat = 3
        let indicatorCount:CGFloat = 3
        
        var originY: CGFloat = (rect.size.height - ((indicatorCount * indicatorHeight)+((indicatorCount-1) * indicatorVerticalMargin)))/2
        let originX = rect.size.width - 10
        
        for i in 0..<Int(indicatorCount) {
            let rectanglePath = UIBezierPath(rect: CGRectMake(originX, originY, indicatorHeight, indicatorHeight))
            color.setFill()
            rectanglePath.fill()
            originY += indicatorHeight + indicatorVerticalMargin
            self.indicators.append(rectanglePath)

        }
        

    }
    

}
