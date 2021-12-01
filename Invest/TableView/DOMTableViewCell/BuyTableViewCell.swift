//
//  BuyTableViewCell.swift
//  Invest
//
//  Created by ms24 on 26.10.21.
//

import UIKit

class BuyTableViewCell: UITableViewCell {
    
   
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var sellLabel: UILabel!
    @IBOutlet weak var buyLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
