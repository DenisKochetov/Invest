//
//  OperationsViewCell.swift
//  Invest
//
//  Created by ms24 on 12.12.21.
//

import UIKit

class OperationsViewCell: UITableViewCell {

//    @IBOutlet weak var operationImage: UIImageView!
    @IBOutlet weak var operationImage: UIImageView!
    //    @IBOutlet weak var operationTitle: UILabel!
    @IBOutlet weak var operationTitle: UILabel!
//    @IBOutlet weak var operationAmount: UILabel!
    @IBOutlet weak var operationAmount: UILabel!
    static let reusableIdentifier = "OperationsViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        operationImage.layer.cornerRadius = operationImage.frame.width / 2.0
        operationImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
