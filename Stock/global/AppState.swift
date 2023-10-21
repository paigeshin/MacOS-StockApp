//
//  AppState.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

final class AppState {
    
    var stockState: StocksState
    var routeState: RouteState
    
    init(stockState: StocksState = StocksState(), routeState: RouteState = RouteState()) {
        self.stockState = stockState
        self.routeState = routeState
    }
    
}

class StocksState: ObservableObject {
    @Published var stocks: [StockViewModel] = []
    func stockBySymbol(_ symbol: String) -> StockViewModel? {
        guard let stock = (self.stocks.first { $0.symbol == symbol }) else {
            return nil
        }
        return stock
    }
}

class RouteState: ObservableObject {
    
    var routes: [Route] = []
    
    @Published var route: Route = .businessArticles
    
    func push(_ route: Route) {
        self.routes.append(route)
        self.route = route
    }
    
    func pop() -> Route? {
        return self.routes.popLast()
    }
    
}
