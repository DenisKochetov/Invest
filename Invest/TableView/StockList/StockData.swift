//
//  StockData.swift
//  Invest
//
//  Created by ms24 on 12.12.21.
//

import Foundation


let currencies = ["ruble", "dollar", "ruble", "ruble", "ruble", "ruble", "dollar", "ruble", "ruble", "ruble"]

//    let prices = ["6811", "16,71", "5380", "417,8", "1500,5"]
let prices: [Double] = [6811, 16.71, 5380, 417.8, 1500.5, 6811, 16.71, 5380, 417.8, 1500.5]

let images = ["https://s3-symbol-logo.tradingview.com/tcs-group-holding--600.png", "https://s3-symbol-logo.tradingview.com/virgin-galactic--600.png", "https://s3-symbol-logo.tradingview.com/yandex--600.png",
"https://s3-symbol-logo.tradingview.com/lenta--600.png", "https://s3-symbol-logo.tradingview.com/moscow-exchange--600.png",
              "https://s3-symbol-logo.tradingview.com/tcs-group-holding--600.png", "https://s3-symbol-logo.tradingview.com/virgin-galactic--600.png", "https://s3-symbol-logo.tradingview.com/yandex--600.png",
              "https://s3-symbol-logo.tradingview.com/lenta--600.png", "https://s3-symbol-logo.tradingview.com/moscow-exchange--600.png"]


let amounts: [Double] = [1, 1, 1, 2, 10, 1, 1, 1, 2, 10]

var currentIndex = 0



let titles = ["TCS Group", "Virgin Galactic Holdings Inc", "Yandex", "Лента", "Московская биржа", "TCS Group", "Virgin Galactic Holdings Inc", "Yandex", "Лента", "Московская биржа"]

let tickers = ["TCSG", "SPCE", "YNDX", "LNTA", "MOEX",
               "TCSG", "SPCE", "YNDX", "LNTA", "MOEX" ]
    
let currencySymbols = ["ruble": "₽", "dollar": "$"]


