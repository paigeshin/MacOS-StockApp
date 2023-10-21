//
//  NewsArticleHeaderView.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct NewsArticleHeaderView: View {
    
    @EnvironmentObject private var appState: AppState
    let symbol: String
    
    var body: some View {
        if let stock = self.appState.stockBySymbol(self.symbol) {
            HStack(alignment: .firstTextBaseline) {
                VStack(alignment: .leading, content: {
                    Text(stock.symbol)
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                    
                    Text("\(stock.price, specifier: "%.2f")")
                        .font(.system(size: 15))
                        .fontWeight(.bold)
                }) //: VStack
                
                Text(stock.name)
                    .opacity(0.4)
                
                Spacer()
                
            } //: HStack
        }
    } //: body
    
}
