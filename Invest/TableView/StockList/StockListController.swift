//
//  StockListController.swift
//  Invest
//
//  Created by ms24 on 28.11.21.
//

import Foundation
import UIKit



class StockListController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var stockView: UITableView!
    
    @IBOutlet weak var operations: UIButton!
    //    @IBOutlet weak var balanceVal: UILabel!

    



    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "StocksTableViewCell", bundle: nil)
        stockView.register(nib, forCellReuseIdentifier: "StocksTableViewCell")

        stockView.delegate = self
        stockView.dataSource = self
        
//        operations.imageView?.contentMode = .scaleAspectFit
//        let tap = UITapGestureRecognizer(target: self, action: #selector(StockListController.tapFunction))
//            balanceVal.isUserInteractionEnabled = true
//            balanceVal.addGestureRecognizer(tap)
    }
    
//    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
//        balanceVal.text = "eee"
//        
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentIndex = indexPath.row
        print("selected cell \(titles[indexPath.row])")
        performSegue(withIdentifier: "stockDetail", sender: self)
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
