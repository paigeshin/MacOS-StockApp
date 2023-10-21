//
//  StockListView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]
    @EnvironmentObject private var routState: RouteState

    var body: some View {
        List {
            
            BusinessNewsHeaderView(onSelected:{
                self.routState.route = .businessArticles
            })
            
            ForEach(self.stocks) { stock in
                StockCellView(stock: stock, onSelected: { selectedStock in
                    self.routState.route = .stockDetail(selectedStock)
                })
            } //: ForEach
            
        } //: List
    } //: body
}

