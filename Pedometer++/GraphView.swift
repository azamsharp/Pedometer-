//
//  GraphView.swift
//  Pedometer++
//
//  Created by Mohammad Azam on 7/14/16.
//  Copyright © 2016 Mohammad Azam. All rights reserved.
//

import UIKit

class GraphView: UIView {

    var noOfSteps :[NSNumber] = [NSNumber]()
    
     override init(frame: CGRect) {
        
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    func plot(noOfSteps :[NSNumber]) {
       
        self.noOfSteps = noOfSteps
        self.setNeedsDisplay()
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        var x = 10
        
        for step in self.noOfSteps {
            
            UIColor.greenColor().setFill()
            let bar = UIBezierPath(rect: CGRect(x: x, y: Int(self.bounds.height - 10), width: 30, height: -1 * step.integerValue/200))
            
            x += Int(self.frame.size.width) / self.noOfSteps.count
            
            bar.fill()

        }
        
      
        
    }
    

}
