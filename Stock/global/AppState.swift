//
//  AppState.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

final class AppState: ObservableObject {
    
    @Published var stocks: [StockViewModel] = [] 
    @Published var route: Route = .businessArticles
    
    func stockBySymbol(_ symbol: String) -> StockViewModel? {
        guard let stock = (self.stocks.first { $0.symbol == symbol }) else {
            return nil
        }
        return stock
    }
    
}
