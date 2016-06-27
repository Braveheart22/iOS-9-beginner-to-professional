//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by Jeanne Mitchell on 6/17/16.
//  Copyright © 2016 Loop-Loc. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 25.0
        self.clipsToBounds = true
    }

}
