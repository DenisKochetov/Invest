//
//  Manually.swift
//  Invest
//
//  Created by ms24 on 20.10.21.
//

import Foundation
import UIKit

class Manually: UIViewController{
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak private var orangeView: UIView!
    @IBOutlet weak private var
orangeViewCenterConstraint:
    NSLayoutConstraint!
    
    @IBAction func buttonDidClick(_ sender: Any){
        print("warning here")
        UIView.animateKeyframes(withDuration: 2, delay: 0, animations: {
            self.orangeView.backgroundColor = .red
        })
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    
}
