//
//  AppState.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

final class AppState: ObservableObject {
    
    @Published var stocks: [StockViewModel] = [] 
    
}
