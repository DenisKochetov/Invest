//
//  ViewController.swift
//  Invest
//
//  Created by ms24 on 18.10.21.
//

import UIKit

//var tickers = titles

class StockViewController: UIViewController {

    @IBOutlet weak var stockTitle: UILabel!
    //    print(String(vc.myData.count))
    @IBOutlet weak var stockTicker: UILabel!
    
    @IBOutlet weak var stockImage: UIImageView!
    @IBOutlet weak var stockPrice: UILabel!
    @IBOutlet weak var buyButton: UIButton!
//    @IBOutlet weak var customCase: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stockTitle.text = titles[currentIndex]
        stockImage.load(urlString: images[currentIndex])
        
        stockImage.layer.cornerRadius = stockImage.frame.width / 2.0
        stockImage.clipsToBounds = true
        
        stockTicker.text = tickers[currentIndex]
        let price = prices[currentIndex]
//        let amount = amounts[currentIndex]
//        let sum = price * amount
        let currency = currencySymbols[currencies[currentIndex]]
        stockPrice.text = "\(price) \(currency ?? "₽")"
        
        
        
//
//        let price = prices[indexPath.row]
//        let amount = amounts[indexPath.row]
//        let sum = price * amount
//        let currency = currencySymbols[currencies[indexPath.row]]!
//        cell.stockPrice.text = "\(sum) \(currency)"
//        cell.stockTitle.text = titles[indexPath.row]
//
//        cell.stockImage.load(urlString: images[indexPath.row])
//        cell.stockDesc.text = "\(amount) pcs · \(price) \(currency)"
        // Do any additional setup after loading the view.
    }
    

 
}
