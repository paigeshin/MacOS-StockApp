//
//  Stock.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct Stock: Decodable, Equatable {
    
    var symbol: String = ""
    var description: String = ""
    var price: Double = 0
    var change: String = ""
    var historicalPrices: [Double] = []
    
    enum CodingKeys: CodingKey {
        case symbol
        case description
        case price
        case change
        case historicalPrices
    }
    
    init(symbol: String, description: String, price: Double, change: String, historicalPrices: [Double]) {
        self.symbol = symbol
        self.description = description
        self.price = price
        self.change = change
        self.historicalPrices = historicalPrices
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol) ?? ""
        self.description = try container.decodeIfPresent(String.self, forKey: .description) ?? ""
        self.price = try container.decodeIfPresent(Double.self, forKey: .price) ?? 0
        self.change = try container.decodeIfPresent(String.self, forKey: .change) ?? ""
        self.historicalPrices = try container.decodeIfPresent([Double].self, forKey: .historicalPrices) ?? []
    }
    
}

extension Stock {
    
    static func fromVM(_ vm: StockViewModel) -> Stock {
        Stock(
            symbol: vm.symbol,
            description: vm.name,
            price: vm.price,
            change: vm.change,
            historicalPrices: vm.historicalPrices
        )
    }
    
}
