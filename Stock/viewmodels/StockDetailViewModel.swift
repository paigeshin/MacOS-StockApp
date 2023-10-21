//
//  StockDetailViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

@MainActor
final class StockDetailViewModel: ObservableObject {
    
    @Published var articles: [ArticleViewModel] = []
    
    func fetchArticlesByStock(stock: StockViewModel) async {
        do {
            let articles = try await WebService().fetchArticlesBy(stock: Stock.fromVM(stock))
            self.articles = articles.map(ArticleViewModel.init)
        } catch {
            print(error)
        }
    }
    
}
