//
//  StockListView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]
    @EnvironmentObject private var appState: AppState

    var body: some View {
        List {
            
            BusinessNewsHeaderView()
            
            ForEach(self.stocks) { stock in
                StockCellView(stock: stock, onSelected: { selectedStock in
                    self.appState.route = .stockDetail(selectedStock)
                })
            } //: ForEach
            
        } //: List
    } //: body
}

