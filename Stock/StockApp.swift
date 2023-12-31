//
//  StockApp.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

@main
struct StockApp: App {
    
    private let appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .frame(minWidth: 600, minHeight: 600)
                .environmentObject(self.appState.routeState)
                .environmentObject(self.appState.stockState)
        }
    }
}
