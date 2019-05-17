//
//  WhiteViewController.swift
//  StoryB2018
//
//  Created by Roger Kislig on 12.11.18.
//  Copyright © 2018 approppo. All rights reserved.
//

import UIKit

class WhiteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "White View 2"
    }


    @IBAction func navigate(_ sender: Any) {
        self.navigationController?.pushViewController(OrangeViewController(), animated: true)
    }
    
}
