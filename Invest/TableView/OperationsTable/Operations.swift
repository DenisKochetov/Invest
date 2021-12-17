//
//  Operations.swift
//  Invest
//
//  Created by ms24 on 12.12.21.
//

import Foundation

class Operations{
    var operationTitle: String?
    var operationImage: String?
    var operationAmount: Double?
    var operationCurrency: String?
    
    init(operationTitle: String, operationAmount: Double, operationImage: String, operationCurrency: String){
        self.operationTitle = operationTitle
        self.operationAmount = operationAmount
        self.operationImage = operationImage
        self.operationCurrency = operationCurrency
    }
}
