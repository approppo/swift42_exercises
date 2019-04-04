//
//  ViewController.swift
//  Exercise
//
//  Created by Adrian Kosmaczewski on 06.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    // tag::sample[]
    override func viewDidAppear(_ animated: Bool) {
        
        print("viewDidAppear")
        
        super.viewDidAppear(animated)
        let msg = "This is an alert!"
        let ac = UIAlertController(title: "Hello!",
                                   message: msg,
                                   preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK",
                               style: .default,
                               handler: nil)
        ac.addAction(ok)
        self.present(ac,
                     animated: true,
                     completion: nil)
        
        print("viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    // end::sample[]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

