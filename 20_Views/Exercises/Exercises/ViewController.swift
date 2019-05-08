//
//  ViewController.swift
//  Exercises
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panel = InfoPanelView()
        panel.frame = CGRect(x: 10, y: 60, width: 200, height: 50)
        panel.backgroundColor = .lightGray
        panel.active = true
        view.addSubview(panel)
    }
}
