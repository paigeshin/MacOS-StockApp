//
//  StockListViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

@MainActor
final class StockListViewModel: ObservableObject {
    
    let appState: AppState

    init(appState: AppState) {
        self.appState = appState
    }

    var stocks: [StockViewModel] {
        self.appState.stocks
    }
    
    func getStocks() async {
        do {
            let stocks = try await WebService().fetchStocks()
            self.appState.stocks = stocks.map(StockViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
