//
//  ViewController.swift
//  Invest
//
//  Created by ms24 on 18.10.21.
//

import UIKit

class ViewController: UIViewController {
    let vc = StockListController()
//    print(String(vc.myData.count))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("warning appers")
    }
    
    
    
    @IBOutlet weak var tapMeButton: UIButton?
    
    @IBAction func onButtonDidTap(_ sender: Any) {
        print("tap")
//        tapMeButton?.superview?.backgroundColor = .red
        
        
    }
}

