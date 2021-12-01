//
//  StocksTableViewCell.swift
//  Invest
//
//  Created by ms24 on 02.11.21.
//

import UIKit

class StocksTableViewCell: UITableViewCell {
    
    @IBOutlet weak var stockTitle: UILabel!
    
    @IBOutlet weak var stockPrice: UILabel!
    @IBOutlet weak var stockImage: UIImageView!
    @IBOutlet weak var stockDesc: UILabel!
    @IBOutlet weak var stockDelta: UILabel!
    static let reusableIdentifier = "StocksTableViewCell"
//    private let stockView = UITableView()

    override func awakeFromNib() {
        super.awakeFromNib()
        
        stockImage.layer.cornerRadius = stockImage.frame.width / 2.0
        stockImage.clipsToBounds = true
//        stockImage.layer.borderColor = UIColor.black.cgColor
//        stockImage.layer.borderWidth = 1.0
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    required init?(coder aDecoder: NSCoder) {
       super.init(coder: aDecoder)
    }
}
