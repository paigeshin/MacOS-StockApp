//
//  StockArticleViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

struct StockArticleViewModel: Identifiable {
    
    let id = UUID()
    
    private var stockModel: Stock?
    private let articlesModel: [Article]
    
    init(stock: Stock? = nil, articles: [Article]) {
        self.stockModel = stock
        self.articlesModel = articles
    }
    
    var stock: StockViewModel? {
        guard let stockModel = self.stockModel else { return nil }
        return StockViewModel(stock: stockModel)
    }
    
    var articles: [ArticleViewModel] {
        self.articlesModel.map(ArticleViewModel.init)
    }
    
}
