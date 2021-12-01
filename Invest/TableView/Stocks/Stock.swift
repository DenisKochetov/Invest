//
//  Stock.swift
//  Invest
//
//  Created by ms24 on 02.11.21.
//

import Foundation



class Stock {
    
    var title: String
    var amount: Decimal
    var sum: Decimal
    var price: Decimal
    var delta: Decimal
//    var image: String
    var imageURl: URL?
    
    init(){
        title = ""
        price = 0
        amount = 0
        sum = 0
        delta = 0
//        image = "https://acdn.tinkoff.ru/static/documents/d6400f9d-63bb-4076-b887-7aa967baf8a9.svg"
//        imageURl = URL(string: image)
    }
    
    init(title: String, amount: Decimal, price:  Decimal, delta: Decimal,  image: String) {
        self.title = title
        self.amount = amount
        self.sum = amount * price
        self.price = price
        self.delta = delta
//        self.image = image
        self.imageURl = URL(string: image)
    }
    
    convenience init(json: [String: Any]){
        self.init(
            title: json["title"] as! String,
            amount: json["amount"] as! Decimal,
//            sum: json["sum"] as! Decimal,
            price: json["price"] as! Decimal,
            delta: json["delta"] as! Decimal,
            image: json["image"] as! String
//            imageURL: URL(string:  json["image"] as! String) as! URL
        )
        
    }
}
