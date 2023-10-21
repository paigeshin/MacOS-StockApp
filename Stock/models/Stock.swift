//
//  Stock.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct Stock: Decodable {
    
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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol) ?? ""
        self.description = try container.decodeIfPresent(String.self, forKey: .description) ?? "" 
        self.price = try container.decodeIfPresent(Double.self, forKey: .price) ?? 0
        self.change = try container.decodeIfPresent(String.self, forKey: .change) ?? ""
        self.historicalPrices = try container.decodeIfPresent([Double].self, forKey: .historicalPrices) ?? []
    }
    
}
