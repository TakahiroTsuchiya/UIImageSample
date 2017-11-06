//
//  CustomImageView.swift
//  UIImageSample
//
//  Created by other on 2017/11/06.
//  Copyright © 2017 TakahiroTsuchiya. All rights reserved.
//

import UIKit

@IBDesignable
class CustomImageView: UIImageView {

    //MARKS: Properties
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = true
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    // create from code.
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = cornerRadius
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        self.layer.cornerRadius = cornerRadius
    }
}
