//
//  StockListViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

@MainActor
final class StockListViewModel: ObservableObject {
    
    let stocksState: StocksState

    init(stocksState: StocksState) {
        self.stocksState = stocksState
    }

    var stocks: [StockViewModel] {
        self.stocksState.stocks
    }
    
    func getStocks() async {
        do {
            let stocks = try await WebService().fetchStocks()
            self.stocksState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
