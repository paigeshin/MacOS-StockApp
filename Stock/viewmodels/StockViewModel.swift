//
//  StockviewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct StockViewModel: Identifiable {
    
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    let id = UUID()
    
    var name: String { self.stock.description }
    var symbol: String { self.stock.symbol }
    var price: Double { self.stock.price }
    var change: String { self.stock.change }
    var historicalPrices: [Double] { self.stock.historicalPrices }
    
}
