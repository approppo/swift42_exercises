//
//  ViewController.swift
//  Table
//
//  Created by Adrian Kosmaczewski on 14.02.17.
//  Copyright © 2017 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    // tag::data[]
    let countries = ["Burkina Faso", "Armenia", "Croatia", "Kenya", "Puerto Rico", "Netherlands", "Kuwait", "Malawi", "Oman", "Maldives", "Czech Republic", "Japan", "Poland", "Vietnam", "Bulgaria", "Luxembourg", "Seychelles", "Argentina", "Belize", "Israel", "India", "Mozambique", "Saint Lucia", "Suriname", "Bosnia and Herzegovina", "Madagascar", "Greece", "Morocco", "Benin", "Bhutan", "Vanuatu", "Kosovo", "Eritrea", "Indonesia", "United Kingdom", "Bulgaria", "Malta", "Honduras", "Kyrgyzstan"]
    // end::data[]

    // tag::create[]
    override func loadView() {
        super.loadView()

        let tableView = UITableView(frame: self.view.bounds,
                                    style: UITableView.Style.plain)
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view = tableView
    }
    // end::create[]

    // tag::protocol[]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        let country = countries[indexPath.row]
        cell.textLabel?.text = country
        return cell
    }
    // end::protocol[]
}
