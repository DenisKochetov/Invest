//
//  OperationBlock.swift
//  Invest
//
//  Created by ms24 on 12.12.21.
//

import Foundation

class OperationBlock{
    var operationDate: String
    var operationList: [Operations]
    
    init(operationDate: String, operationList: [Operations]){
        self.operationDate = operationDate
        self.operationList = operationList
        
    }
}
