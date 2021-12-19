//
//  ViewController.swift
//  Invest
//
//  Created by ms24 on 18.10.21.
//

import UIKit



class OperationTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operationBlock[section].operationList.count ?? 0
//        return headers.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return operationBlock.count
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return operationBlock[section].operationDate
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = operationTable.dequeueReusableCell(withIdentifier: "OperationsViewCell", for: indexPath) as! OperationsViewCell
        let currentRow = operationBlock[indexPath.section].operationList[indexPath.row]
        
        let currency = currencySymbols[currentRow.operationCurrency ?? "dollar"]!
//        let operations = operationBlock[indexPath.row].operationList
        let amount = currentRow.operationAmount ?? 0
        if amount < 0 {
                cell.operationAmount.textColor = UIColor.red
        }
        else {
            cell.operationAmount.textColor = UIColor.green
        }
                
        cell.operationTitle.text = currentRow.operationTitle
        cell.operationAmount.text = "\(amount) \(currency)"
//        cell.operationAmount.text = "$"
        cell.operationImage.load(urlString: currentRow.operationImage ?? "")

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
        operations2.append(Operations.init(operationTitle: "Balance recharge", operationAmount: 500, operationImage: "https://images.fineartamerica.com/images-medium-5/american-flag--square-wingsdomain-art-and-photography.jpg", operationCurrency: "dollar"))
//        operations = operations + operations2
        operationBlock.append(OperationBlock.init(operationDate: "2 September", operationList: operations2))
        
        let nib = UINib(nibName: "OperationsViewCell", bundle: nil)
        operationTable.register(nib, forCellReuseIdentifier: "OperationsViewCell")
        operationTable.delegate = self
        operationTable.dataSource = self
        

        
        
        // Do any additional setup after loading the view.
    }
    
    

    
    
            
    
}

