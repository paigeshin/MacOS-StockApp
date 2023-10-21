//
//  StockDetailScreen.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import SwiftUI

struct StockDetailScreen: View {
    
    let stock: StockViewModel
    @StateObject private var vm = StockDetailViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                NewsArticleHeaderView(symbol: self.stock.symbol)
             
                GeometryReader { geo in
                    ZStack {
                        StockGraphBackgroundView()
                            .overlay {
                                LineChartView(
                                    values: self.stock.historicalPrices,
                                    labels: Constants.getYearlyLabels(),
                                    screenWidth: geo.size.width / 2
                                )
                            }
                    } //: ZStack
                    .frame(maxWidth: .infinity, alignment: .center)
                } //: GeometryReader
                .padding()
                .frame(height: 300)
                
                Spacer()
                
                ArticlesGridView(articles: self.vm.articles)
            } //: VStack
            .task(id: self.stock) {
                await self.vm.fetchArticlesByStock(stock: self.stock)
            }
        } //: ScrollView
    } //: body
}


