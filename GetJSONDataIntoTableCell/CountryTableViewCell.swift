//
//  CountryTableViewCell.swift
//  GetJSONDataIntoTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var cName: UILabel!
    @IBOutlet weak var cCapital: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
