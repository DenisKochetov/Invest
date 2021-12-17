//
//  ViewController.swift
//  Invest
//
//  Created by ms24 on 18.10.21.
//

import UIKit

class OperationTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return operationBlock.count
        return operations.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return operationBlock.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = operationTable.dequeueReusableCell(withIdentifier: "OperationsViewCell", for: indexPath) as! OperationsViewCell
        
        let currency = currencySymbols[operations[indexPath.row].operationCurrency ?? "dollar"]!
//        let operations = operationBlock[indexPath.row].operationList
        let amount = operations[indexPath.row].operationAmount ?? 0
        if amount < 0 {
                cell.operationAmount.textColor = UIColor.red
        }
        else {
            cell.operationAmount.textColor = UIColor.green
        }
                
        cell.operationTitle.text = operations[indexPath.row].operationTitle
        cell.operationAmount.text = "\(amount) \(currency)"
//        cell.operationAmount.text = "$"
        cell.operationImage.load(urlString: operations[indexPath.row].operationImage ?? "")

        return cell
    }
 

    
  
    @IBOutlet weak var operationTable: UITableView!
    
    var operations = [Operations]()
    var operations2 = [Operations]()
    var operationBlock = [OperationBlock]()
    
    var headers = ["13 December", "22 November"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        operations.append(Operations.init(operationTitle: "Dividends payment", operationAmount: 168.9, operationImage: "https://s3-symbol-logo.tradingview.com/virgin-galactic--600.png", operationCurrency: "dollar"))
        operations.append(Operations.init(operationTitle: "Stock purchase: Virgin Galactic", operationAmount: -500, operationImage: "https://s3-symbol-logo.tradingview.com/virgin-galactic--600.png", operationCurrency: "dollar"))
        operationBlock.append(OperationBlock.init(operationDate: "16 September", operationList: operations))
        operations2.append(Operations.init(operationTitle: "Balance recharge", operationAmount: 500, operationImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/US_flag_large_51_stars.png/800px-US_flag_large_51_stars.png", operationCurrency: "dollar"))
        operations = operations + operations2
        operationBlock.append(OperationBlock.init(operationDate: "2 September", operationList: operations2))
        
        let nib = UINib(nibName: "OperationsViewCell", bundle: nil)
        operationTable.register(nib, forCellReuseIdentifier: "OperationsViewCell")
        operationTable.delegate = self
        operationTable.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }

    
    
            
    
}

