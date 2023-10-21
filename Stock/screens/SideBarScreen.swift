//
//  SideBarScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct SideBarScreen: View {
    
    @EnvironmentObject var stocksState: StocksState
    
    var body: some View {
        VStack(alignment: .leading) {
            StockListScreen(vm: StockListViewModel(stocksState: self.stocksState))
        } //: VStack
    }
}
