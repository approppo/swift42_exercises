//
//  FlagTableViewCell.swift
//  Table
//
//  Created by Matej Malesevic on 14.05.19.
//  Copyright © 2019 Adrian Kosmaczewski. All rights reserved.
//

import UIKit

class FlagTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var gif: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
