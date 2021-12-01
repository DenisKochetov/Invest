//
//  DOMTableViewController.swift
//  Invest
//
//  Created by ms24 on 25.10.21.
//

import UIKit

final class DOMTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
   
    let buyData = [0, 0, 0, 0, 0, 8, 164, 508, 576, 135]
    let sellData = [183, 10, 701, 5, 41, 0, 0, 0, 0, 0]
    let priceData = [4.61, 4.6, 4.59, 4.58, 4.57, 4.56, 4.55, 4.54, 4.53, 4.52]
    
    override func viewDidLoad(){
        super.viewDidLoad()
        let nib = UINib(nibName: "BuyTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "BuyTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return priceData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BuyTableViewCell", for: indexPath) as! BuyTableViewCell
        cell.sellLabel.text = String(sellData[indexPath.row])
        cell.priceLabel.text = String(priceData[indexPath.row]) + " $"
        cell.buyLabel.text = String(buyData[indexPath.row])
        return cell        
    }


    
    private let customView = CustomTableContainerView()
//    required init?(coder: NSCoder) {
//        print("fdfd")
//        <#code#>
//    }
    


    



    // MARK: - Table view data source
//
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 3
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 15
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//
////         Configure the cell...
//
//        return cell
//    }
//
//
    
    // Override to support conditional editing of the table view.
//    override func tableView(_ tableView: UITableView, didSelectRowAt
//                            indexPath: IndexPath) {
//        // Return false if you do not want the specified item to be editable.
//        print("selected \(indexPath)")
//        if let cell = tableView.cellForRow(at: indexPath) as? DOMTableViewCell {
//                    cell.updateSelection()
//
//            }
//    }
    
 
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
