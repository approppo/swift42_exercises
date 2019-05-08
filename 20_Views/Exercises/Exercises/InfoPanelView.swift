//
//  InfoPanelView.swift
//  Exercises
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

@IBDesignable
class InfoPanelView: UIView {
    
    private let spinningWheel = UIActivityIndicatorView()
    private let label = UILabel()
    
    @IBInspectable var active : Bool = false {
        didSet {
            if active {
                spinningWheel.startAnimating()
                label.text = "In progress…"
            }
            else {
                spinningWheel.stopAnimating()
                label.text = ""
            }
        }
    }
    
    override func layoutSubviews() {
        let size = self.frame.size
        let w = size.width
        let h = size.height
        let rect = CGRect(x: 10,
                          y: 10,
                          width: w - 50,
                          height: h - 20)
        label.frame = rect
        
        spinningWheel.center = CGPoint(x: w - 30, y: h / 2)
        spinningWheel.hidesWhenStopped = true
        spinningWheel.style = .gray
        
        addSubview(label)
        addSubview(spinningWheel)
    }

}
