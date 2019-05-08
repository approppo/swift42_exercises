//
//  ViewController.swift
//  Subclass
//
//  Created by Adrian Kosmaczewski on 09.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // tag::using[]
    override func viewDidLoad() {
        super.viewDidLoad()

        let rect = CGRect(x: 30,
                          y: 100,
                          width: 300,
                          height: 80)
        let custom = CenteredRedView(frame: rect)
        custom.text = "Freshly created!"
        view.addSubview(custom)
    }
    // end::using[]
}

