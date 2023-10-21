//
//  StockListView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockListView: View {
    
    let stocks: [StockViewModel]

    var body: some View {
        List {
            
            BusinessNewsHeaderView()
            
            ForEach(self.stocks) { stock in
                StockCellView(stock: stock)
            } //: ForEach
            
        } //: List
    } //: body
}

