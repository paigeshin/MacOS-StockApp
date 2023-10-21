//
//  StockArticleListViewModel.swift
//  Stock
//
//  Created by paige shin on 10/21/23.
//

import Foundation

@MainActor
final class StockArticleListViewModel: ObservableObject {
    
    @Published var stockArticles: [StockArticleViewModel] = []
    
    func fetchArticles() async {
        do {
            let articles = try await WebService().fetchBusinessArticles()
            let stockArticleVM = StockArticleViewModel(articles: articles)
            self.stockArticles.append(stockArticleVM)
        } catch {
            print(error)
        }
    }
    
}
