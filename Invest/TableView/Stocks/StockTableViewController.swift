//
//  StockTableViewController.swift
//  Invest
//
//  Created by ms24 on 02.11.21.
//

import UIKit
 


class StockTableViewController: UITableViewController  {
//    @IBOutlet override var stockView: UITableView!
//
    let stockList = [1,2, 3]
    let buyData = [0, 0, 0, 0, 0, 8, 164, 508, 576, 135]
    let sellData = [183, 10, 701, 5, 41, 0, 0, 0, 0, 0]
    let priceData = [4.61, 4.6, 4.59, 4.58, 4.57, 4.56, 4.55, 4.54, 4.53, 4.52]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let nib = UINib(nibName: "StocksTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: StocksTableViewCell.reusableIdentifier)
        tableView.separatorColor = UIColor.darkGray
        tableView.separatorInset = .zero

    }
    
    
    func stockView(_ stockView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stockList.count
    }
    
    
    func stockView(_ stockView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "stockCell", for: indexPath) as! BuyTableViewCell
        cell.sellLabel.text = String(sellData[indexPath.row])
        cell.priceLabel.text = String(priceData[indexPath.row]) + " $"
        cell.buyLabel.text = String(buyData[indexPath.row])
        return cell
    }
    
    func stockView(_ stockView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "text"
    }
    

    
    private let customView = CustomTableContainerView()
//    required init?(coder: NSCoder) {
//        print("fdfd")
//        <#code#>
//    }
}
