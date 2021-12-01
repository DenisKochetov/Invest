//
//  StockListController.swift
//  Invest
//
//  Created by ms24 on 28.11.21.
//

import Foundation
import UIKit
//import Kingfisher


class StockListController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var stockView: UITableView!
    
//    @IBOutlet var tableView:UITableView!

    let myData = ["Tinkoff", "Gazprom", "Apple", "Alibaba"]
    let titles = ["TCS Group", "Virgin Galactic Holdings Inc", "Yandex", "Лента", "Московская биржа"]
    let currencySymbols = ["ruble": "₽", "dollar": "$"]


    let currencies = ["ruble", "dollar", "ruble", "ruble", "ruble"]

//    let prices = ["6811", "16,71", "5380", "417,8", "1500,5"]
    let prices: [Decimal] = [6811, 16.71, 5380, 417.8, 1500.5]
    
    let images = ["https://s3-symbol-logo.tradingview.com/tcs-group-holding--600.png", "https://www.aex.ru/images/media/600/23359.jpg", "https://s3-symbol-logo.tradingview.com/yandex--600.png",
    "https://s3-symbol-logo.tradingview.com/lenta--600.png", "https://s3-symbol-logo.tradingview.com/moscow-exchange--600.png"]

    let amounts: [Decimal] = [1, 1, 1, 2, 10]

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "StocksTableViewCell", bundle: nil)
        stockView.register(nib, forCellReuseIdentifier: "StocksTableViewCell")

        stockView.delegate = self
        stockView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected cell \(titles[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = stockView.dequeueReusableCell(withIdentifier: "StocksTableViewCell", for: indexPath) as! StocksTableViewCell
        let price = prices[indexPath.row]
        let amount = amounts[indexPath.row]
        let sum = price * amount
        let currency = currencySymbols[currencies[indexPath.row]]!
        cell.stockPrice.text = "\(sum) \(currency)"
        cell.stockTitle.text = titles[indexPath.row]
       
        cell.stockImage.load(urlString: images[indexPath.row])
        cell.stockDesc.text = "\(amount) pcs · \(price) \(currency)"
       
       
        return cell
    }

}
